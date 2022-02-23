<?php 
$user="ro-user";
$password="123456";
$database="basic-web";
$table="tblExampleData";
$server="192.168.1.61";

$conn = mysqli_connect($server, $user, $password, $database);

if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM $table";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
  // output data of each row
  while($row = mysqli_fetch_assoc($result)) {
    echo "<b>Record ID: </b>" . $row["recordID"]. " - <b>Record Content: </b>" . $row["recordText"]. "<br>";
  }
} else {
  echo "0 results";
}

mysqli_close($conn);

echo "<a href='index.html'>Back</a>";
?>