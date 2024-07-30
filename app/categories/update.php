<?php
include '../db.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $result = $conn->query("SELECT * FROM categories WHERE id=$id");
    $category = $result->fetch_assoc();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id = $_POST['id'];
    $name = $_POST['name'];
    $sql = "UPDATE categories SET name='$name' WHERE id=$id";
    if ($conn->query($sql) === TRUE) {
        echo "Category updated successfully";
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
    <h3>Edit Category</h3>
    <form method="post" action="">
        Category Name: <input type="text" name="name" value="<?php echo $category['name']; ?>">
        <input type="hidden" name="id" value="<?php echo $category['id']; ?>">
        <input type="submit" value="Update Category">
    </form>
</body>
</html>

