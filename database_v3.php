<?php
// Start the session to access session permissions
session_start();

$_SESSION['Permissions'] = 'Admin';

// Function to check if the user is an Admin
function isAdmin() {
    return isset($_SESSION['Permissions']) && $_SESSION['Permissions'] === 'Admin';
}
?>

<!DOCTYPE html>
<html>
<head>
  <title>Music Database</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
</head>
<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
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
          <?php if (isAdmin()): ?>
          <li><a href="admin.php">Admin</a></li>
          <?php endif; ?>
        </ul>
      </div>
    </div>
    <div id="site_content">
      <div class="sidebar">
      </div>
      <div id="content">
        <h2>Select a Table to View</h2>
        <form method="POST" action="">
          <select name="table">
            <option value="album_id">Albums</option>
            <option value="artist_id">Artists</option>
            <option value="song_id">Songs</option>
            <option value="genre_id">Genre</option>
            <option value="songtoartist">Song to Artist</option>
            <option value="songtogenre">Song to Genre</option>
            <option value="main">Main</option>  
          </select>
          <br>
          <input type="submit" name="sort_default" value="Show Table">
          <input type="submit" name="sort_genre_artist_az" value="Sort by Genre and Artist A->Z">
          <input type="submit" name="sort_song_artist_za" value="Sort by Song and Artist Z->A">
        </form>
        
        <?php
		// PHP FUNCTION CODE START
		  
		  
        // Database connection
        $servername = "localhost";
        $username = "_JKhine";
        $password = "dA2xERMH2TCtJQl8";
        $dbname = "JKhine_13CSI_Music";

        // Establish a database connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Function to fetch and display data with sorting
        function displaySortedTable($conn, $tableName, $orderClause) {
            $tableName = mysqli_real_escape_string($conn, $tableName);
            $sql = "SELECT * FROM `$tableName` $orderClause";
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

        // Filter query function
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            if (isset($_POST['sort_genre_artist_az'])) {
                $orderClause = "ORDER BY Genre ASC, Artist ASC";
                displaySortedTable($conn, 'main', $orderClause);
            } elseif (isset($_POST['sort_song_artist_za'])) {
                $orderClause = "ORDER BY `Song Name` DESC, Artist DESC";
                displaySortedTable($conn, 'main', $orderClause);
            } elseif (isset($_POST['sort_default']) && isset($_POST['table'])) {
                $selectedTable = $_POST['table'];
                $orderClause = ""; // No specific order
                displaySortedTable($conn, $selectedTable, $orderClause);
            } else {
                echo "<p>Please select a table to view.</p>";
            }
        }
		// PHP FUNCTION CODE END
        $conn->close();
        ?>
      </div>
    </div>
    <div id="footer">
      Copyright &copy; Jeremy Khine 2024 all rights reserved
    </div>
  </div>
</body>
</html>
