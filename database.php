<?php

// Database configuration
$servername = "localhost";
$username = "root";
$password = "";
$database = "wbs";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to fetch employees from the database
function getEmployees() {
    global $conn;
    $sql = "SELECT * FROM kaishain";
    $result = $conn->query($sql);
    $employees = array();
    if ($result->num_rows > 0) {
        while($row = $result->fetch_assoc()) {
            $employees[] = $row;
        }
    } else {
        echo "No employees found.";
    }
    return $employees;
}

// Fetch employees
$employees = getEmployees();

// Close connection
$conn->close();

// Return JSON response
header('Content-Type: application/json');
echo json_encode($employees);

?>
