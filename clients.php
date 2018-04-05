
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Client List</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="style.css">

</head>
<body>

<div id="wrapper">

	<?php

  include 'header.php';
  include 'nav.php';

  require_once 'login.php';
  $conn = new mysqli($hn, $un, $pw, $db);
  if ($conn->connect_error) die($conn->connect_error);

  $query  = "use gym";
  $query  = "SELECT * FROM clients ORDER BY `last` ASC";
  $result = $conn->query($query);
  if (!$result) die ("Database access failed: " . $conn->error);

  // Header


  echo "<main>";

  echo "<a href='contact.php'>Return to contact</a><br>";
  echo "<h2>Clients</h2>";
  echo "<table><tr><th>First</th><th>Last</th><th>Street</th><th>City</th>
        <th>State</th><th>Zip Code</th><th>E-mail</th><th>Comments</th></tr>";

  // Table Body

  $rows = $result->num_rows;

  for ($j = 0 ; $j < $rows ; ++$j)
  {
    $result->data_seek($j);
    $row = $result->fetch_array(MYSQLI_NUM);

    echo "<tr>";
    for ($k = 1 ; $k < 8 ; ++$k) echo "<td>$row[$k]</td>";
    echo "</tr>";
  }

  echo "</table>";
  echo "</main>";


  $result->close();
  $conn->close();

	include 'footer.php';

?>
</div>
</body>
</html>
