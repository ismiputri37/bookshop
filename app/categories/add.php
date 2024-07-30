<?php
include '../db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = $_POST['category'];
    $sql = "INSERT INTO categories (name) VALUES ('$name')";
    if ($conn->query($sql) === TRUE) {
        echo "Category added successfully";
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
    <title>Document</title>
</head>
<body>
    <h3>Add Category</h3>
    <form action="" method="POST">
        <input type="text" name="category">
        <button type="submit">Submit</button>
    </form>
</body>
</html>