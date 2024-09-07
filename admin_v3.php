<?php
session_start();

// Function to check if the user is an Admin
function isAdmin() {
    return isset($_SESSION['permissions']) && $_SESSION['permissions'] === 'Admin';
}

// Check if the user is logged in and has admin permissions
if (!isset($_SESSION['username']) || !isAdmin()) {
    // Redirect to access denied page or login page
    header("Location: access_denied.php");
    exit();
}

// Database connection
$servername = "localhost";
$dbUsername = "_JKhine";
$dbPassword = "dA2xERMH2TCtJQl8";
$dbname = "JKhine_13CSI_Music";

// Create connection
$conn = new mysqli($servername, $dbUsername, $dbPassword, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to display a table
function displayTable($conn, $tableName) {
    $tableName = mysqli_real_escape_string($conn, $tableName);
    $sql = "SELECT * FROM `$tableName`";
    $result = $conn->query($sql);

    if ($result === false) {
        echo "<p>Error: " . $conn->error . "</p>";
        return;
    }

    if ($result->num_rows > 0) {
        echo "<h2>" . htmlspecialchars($tableName) . "</h2>";
        echo "<table border='1' style='width:100%; border-spacing:0;'><tr>";

        // Print table headers
        while ($fieldInfo = $result->fetch_field()) {
            echo "<th>" . htmlspecialchars($fieldInfo->name) . "</th>";
        }
        echo "</tr>";

        // Print table data
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            foreach ($row as $value) {
                echo "<td>" . htmlspecialchars($value) . "</td>";
            }
            echo "</tr>";
        }
        echo "</table><br>";
    } else {
        echo "<h2>" . htmlspecialchars($tableName) . "</h2><p>No data found.</p>";
    }
}

// Function to add a user
function addUser($conn, $username, $password) {
    $stmt = $conn->prepare("INSERT INTO user_id (Username, Password, Permissions) VALUES (?, ?, 'User')");
    $stmt->bind_param("ss", $username, $password);
    if ($stmt->execute()) {
        echo "<p>User added successfully.</p>";
    } else {
        echo "<p>Error adding user: " . $stmt->error . "</p>";
    }
    $stmt->close();
}

// Function to remove a user by ID
function removeUser($conn, $userId) {
    $stmt = $conn->prepare("DELETE FROM user_id WHERE User_ID = ?");
    $stmt->bind_param("i", $userId);
    if ($stmt->execute()) {
        echo "<p>User removed successfully.</p>";
    } else {
        echo "<p>Error removing user: " . $stmt->error . "</p>";
    }
    $stmt->close();
}

// Function to change a user's password
function changePassword($conn, $userId, $newPassword) {
    $stmt = $conn->prepare("UPDATE user_id SET Password = ? WHERE User_ID = ?");
    $stmt->bind_param("si", $newPassword, $userId);
    if ($stmt->execute()) {
        echo "<p>Password changed successfully.</p>";
    } else {
        echo "<p>Error changing password: " . $stmt->error . "</p>";
    }
    $stmt->close();
}

//Function to Add user, Remove user, Change password.
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['add_user'])) {
        $username = $_POST['username'];
        $password = $_POST['password'];
        addUser($conn, $username, $password);
    }
    if (isset($_POST['remove_user'])) {
        $userId = $_POST['user_id'];
        removeUser($conn, $userId);
    }
    if (isset($_POST['change_password'])) {
        $userId = $_POST['user_id'];
        $newPassword = $_POST['new_password'];
        changePassword($conn, $userId, $newPassword);
    }
}
?>

<!-- WEBSITE HTML -->
<!DOCTYPE HTML>
<html>
<head>
  <title>Admin Panel</title>
  <meta name="description" content="Admin Panel" />
  <meta name="keywords" content="admin, management" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
</head>
<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <h1><a href="index.html">Graeme's<span class="logo_colour">Music</span></a></h1>
          <h2>Admin Panel</h2>
        </div>
      </div>
	</div>
    <div id="menubar">
      <ul id="menu">
        <li class="selected"><a href="index.html">Home</a></li>
        <li><a href="database.php">Database</a></li>
        <!-- Dropdown Menu -->
        <li class="dropdown">
          <a href="#">More Pages</a>
          <ul class="dropdown-content">
            <li><a href="history.html">History</a></li>
            <li><a href="contact.php">Contact Us</a></li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
    <div id="site_content">
	<div class="sidebar">
    <h3>Admin Actions</h3>
	<!-- Add user function buttons -->
    <h4>Add User</h4>
    <form method="post" action="">
        <input type="text" name="username" placeholder="Username" required><br>
        <input type="password" name="password" placeholder="Password" required><br>
        <input type="submit" name="add_user" value="Add User">
    </form>
	<!-- Remove user function buttons -->
    <h4>Remove User</h4>
    <form method="post" action="">
        <input type="number" name="user_id" placeholder="User ID" required><br>
        <input type="submit" name="remove_user" value="Remove User">
    </form>
	<!-- Change user password function buttons -->
    <h4>Change User Password</h4>
    <form method="post" action="">
        <input type="number" name="user_id" placeholder="User ID" required><br>
        <input type="password" name="new_password" placeholder="New Password" required><br>
        <input type="submit" name="change_password" value="Change Password">
    </form>
</div>

      <div id="content">
        <h2>View Users Table</h2>
        <?php displayTable($conn, 'user_id'); ?>
        <h2>View Contacts Table</h2>
        <?php displayTable($conn, 'contacts'); ?>
      </div>
    </div>
    <div id="footer">
      Copyright &copy; Jeremy Khine 2024 all rights reserved
    </div>
  </div>
</body>
</html>

<?php
$conn->close();
?>
