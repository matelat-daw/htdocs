<?php 
class DbConnect {
	private $host = 'localhost';
	private $dbName = 'notificaciones';
	private $user = 'root';
	private $pass = 'Anubis68';

	public function connect() {
		try {
			$conn = new PDO('mysql:host=' . $this->host . '; dbname=' . $this->dbName, $this->user, $this->pass);
			$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			return $conn;
		} catch( PDOException $e) {
			throw new Exception('Database Error: ' . $e->getMessage());
		}
	}
}
?>