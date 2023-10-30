<?php 
if(isset($_POST['token'])) {
	require_once 'includes/DbConnect.php';
	$db = new DbConnect;
	$conn = $db->connect();
	$cdate = date('Y-m-d');
	$stmt = $conn->prepare('INSERT INTO token VALUES (null, :token, :fecha)');
	$stmt->bindParam(':token', $_POST['token']);
	$stmt->bindParam(':fecha', $cdate);
	if($stmt->execute()) {
		echo 'Token saved successfully on mensajes.';
	} else {
		echo 'Failed to save token.';
	}
}
?>