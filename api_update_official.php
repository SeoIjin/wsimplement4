<?php
session_start();
header('Content-Type: application/json');
require_once 'db_connection.php';
require_once 'audit_trail_helper.php';

// Check if admin
if (!isset($_SESSION['user_id']) || empty($_SESSION['is_admin'])) {
    http_response_code(403);
    echo json_encode(['error' => 'Unauthorized']);
    exit();
}

$data = json_decode(file_get_contents('php://input'), true);

if (!isset($data['id']) || !isset($data['name']) || !isset($data['position'])) {
    http_response_code(400);
    echo json_encode(['error' => 'Missing required fields']);
    exit();
}

try {
    // Get old values
    $stmt = $pdo->prepare("SELECT name, position FROM barangay_officials WHERE id = ?");
    $stmt->execute([$data['id']]);
    $old = $stmt->fetch(PDO::FETCH_ASSOC);
    
    if (!$old) {
        http_response_code(404);
        echo json_encode(['error' => 'Official not found']);
        exit();
    }
    
    // Update official
    $stmt = $pdo->prepare("UPDATE barangay_officials SET name = ?, position = ? WHERE id = ?");
    $stmt->execute([$data['name'], $data['position'], $data['id']]);
    
    // Log to audit trail if there were changes
    if ($old['name'] !== $data['name'] || $old['position'] !== $data['position']) {
        $admin_id = $_SESSION['user_id'];
        $admin_email = $_SESSION['user_email'] ?? 'Unknown';
        logOfficialUpdate(
            $admin_id, 
            $admin_email, 
            $data['id'], 
            $old['name'], 
            $data['name'], 
            $old['position'], 
            $data['position']
        );
    }
    
    echo json_encode(['success' => true, 'message' => 'Official updated successfully']);
} catch (PDOException $e) {
    http_response_code(500);
    echo json_encode(['error' => 'Database error: ' . $e->getMessage()]);
}
?>