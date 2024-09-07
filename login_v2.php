<?php
session_start();

// Database connection parameters
$servername = "localhost";
$dbUsername = "_JKhine";  // Your database username
$dbPassword = "dA2xERMH2TCtJQl8"; // Your database password
$dbname = "JKhine_13CSI_Music";

// Create connection
$conn = new mysqli($servername, $dbUsername, $dbPassword, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Get username and password from form
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Prepare and execute the SQL statement
    $stmt = $conn->prepare("SELECT Username, Password, Permissions FROM user_id WHERE Username = ?");
    if ($stmt) {
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $stmt->store_result();

        // Check if a user with the given username exists
        if ($stmt->num_rows > 0) {
            // Bind the result variables
            $stmt->bind_result($db_username, $stored_password, $permissions);
            $stmt->fetch();

            // Directly compare plaintext passwords (temporary)
            if ($password === $stored_password) {
                // Set session variables
                $_SESSION['username'] = $db_username;
                $_SESSION['permissions'] = $permissions;

                // Redirect to a protected page (dashboard)
                header("Location: index.html");
                exit();
            } else {
                echo "Invalid password.";
            }
        } else {
            echo "No user found with that username.";
        }
        $stmt->close();
    } else {
        echo "Failed to prepare statement: " . $conn->error;
    }
}

// Close connection after all operations
$conn->close();
?>
