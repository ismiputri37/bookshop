<?php
include '../db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $category = $_POST['category'];
    $sql = "INSERT INTO categories (name) VALUES ('$category')";
    // if ($conn->query($sql) === TRUE) {
    //     echo "Category added successfully";
    // } else {
    //     echo "Error: " . $sql . "<br>" . $conn->error;
    // }
    if ($conn->query($sql) === TRUE) {
        header("Location: list.php");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Category</title>
</head>
<body>
    <h3>Add Category</h3>
    <form action="add.php" method="POST">
        <input type="text" name="category">
        <button type="submit">Submit</button>
    </form>
</body>
</html>