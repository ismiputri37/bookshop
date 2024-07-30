<?php
include '../db.php';

$result = $conn->query("SELECT * FROM categories");

while($row = $result->fetch_assoc()) {
    echo "ID: " . $row["id"]. " - Name: " . $row["name"]. " ";
    echo "<a href='update.php?id=" . $row['id'] . "'>Edit</a> ";
    echo "<a href='delete.php?id=" . $row['id'] . "'>Delete</a><br>";
}
?>