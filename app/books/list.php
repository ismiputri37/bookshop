<?php
include '../db.php';

$filter_query = "";
if (isset($_GET['category_id'])) {
    $category_id = $_GET['category_id'];
    $filter_query = " WHERE category_id=$category_id";
} elseif (isset($_GET['search_text'])) {
    $search_text = $_GET['search_text'];
    $filter_query = " WHERE title LIKE '%$search_text%' OR author LIKE '%$search_text%' OR publisher LIKE '%$search_text%'";
} elseif (isset($_GET['publication_date'])) {
    $publication_date = $_GET['publication_date'];
    $filter_query = " WHERE publication_date='$publication_date'";
}

$result = $conn->query("SELECT * FROM books" . $filter_query);

while($row = $result->fetch_assoc()) {
    echo "ID: " . $row["id"]. " - Title: " . $row["title"]. " - Author: " . $row["author"]. " - Publication Date: " . $row["publication_date"]. " - Publisher: " . $row["publisher"]. " - Pages: " . $row["pages"]. " - Category ID: " . $row["category_id"]. " ";
    echo "<a href='edit_book.php?id=" . $row['id'] . "'>Edit</a> ";
    echo "<a href='delete_book.php?id=" . $row['id'] . "'>Delete</a><br>";
}
?>
