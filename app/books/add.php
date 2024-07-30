<?php
include '../db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];
    $author = $_POST['author'];
    $publication_date = $_POST['publication_date'];
    $publisher = $_POST['publisher'];
    $pages = $_POST['pages'];
    $category_id = $_POST['category_id'];
    $sql = "INSERT INTO books (title, author, publication_date, publisher, pages, category_id) VALUES ('$title', '$author', '$publication_date', '$publisher', $pages, $category_id)";
    if ($conn->query($sql) === TRUE) {
        echo "Book added successfully";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

$result = $conn->query("SELECT * FROM categories");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<form method="post" action="">
    Title: <input type="text" name="title"><br>
    Author: <input type="text" name="author"><br>
    Publication Date: <input type="date" name="publication_date"><br>
    Publisher: <input type="text" name="publisher"><br>
    Pages: <input type="number" name="pages"><br>
    Category: <select name="category_id">
        <?php while($row = $result->fetch_assoc()) { ?>
            <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
        <?php } ?>
    </select><br>
    <input type="submit" value="Add Book">
</form>
</body>
</html>


