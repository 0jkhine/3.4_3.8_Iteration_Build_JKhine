<?php
// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve and sanitize form data
    $Name = htmlspecialchars(trim($_POST['Name']));
    $Email = htmlspecialchars(trim($_POST['Email']));
    $Phone = htmlspecialchars(trim($_POST['Phone']));
    $Message = htmlspecialchars(trim($_POST['Message']));

    // Establish a database connection
    $conn = new mysqli('localhost', '_JKhine', 'dA2xERMH2TCtJQl8', 'JKhine_13CSI_Music');

    // Check connection
    if ($conn->connect_error) {
        die("Error connecting to the database: " . $conn->connect_error);
    }

    // Prepare an SQL statement to prevent SQL injection
    $stmt = $conn->prepare("INSERT INTO contacts (name, email, phone, message) VALUES (?, ?, ?, ?)");

    if ($stmt === false) {
        die("Error preparing statement: " . $conn->error);
    }

    // Bind parameters to the SQL query
    $stmt->bind_param("ssss", $Name, $Email, $Phone, $Message);

    // Execute the statement and check for errors
    if ($stmt->execute()) {
        echo "Message sent successfully!";
    } else {
        echo "Error: " . $stmt->error;
    }

    // Close the statement and connection
    $stmt->close();
    $conn->close();
}
?>

<!DOCTYPE html>
<html>
<head>
  <title>Contact Us</title>
  <meta name="description" content="Contact page for AudioOcean" />
  <meta name="keywords" content="contact, audio ocean, music" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
</head>
<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_colour", allows you to change the colour of the text -->
          <h1><a href="index.html">Graeme's<span class="logo_colour">Music</span></a></h1>
          <h2>All Your Music Needs</h2>
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
        <!-- Sidebar content remains unchanged -->
      </div>
      <div id="content">
        <h1>Contact Us</h1>
        <form action="" method="post">
          <div class="form_settings">
            <p><span>Name</span><input class="contact" type="text" name="Name" required /></p>
            <p><span>Email Address</span><input class="contact" type="email" name="Email" required /></p>
            <p><span>Phone</span><input class="contact" type="tel" name="Phone" /></p>
            <p><span>Message</span><textarea class="contact textarea" rows="8" cols="50" name="Message" required></textarea></p>
            <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" value="Submit" /></p>
			<img src="img/phone.png" alt="Music note icon image" width="125" height="75" />
          </div>
        </form>
      </div>
    </div>
    <div id="footer">
      Copyright &copy; Jeremy Khine 2024 all rights reserved
    </div>
  </div>
</body>
</html>
