<?php
    $sql_sua_danhmucthucuong = "SELECT * FROM tbl_danhmuc WHERE id_danhmuc='$_GET[iddanhmuc]' LIMIT 1";
    $query_sua_danhmucthucuong = mysqli_query($mysqli,$sql_sua_danhmucthucuong);
?>
<p>Sửa danh mục thức uống</p>
<table border="1" width="50%" style="border-collapse:collapse;">
<form method="POST" action="modules/quanlydanhmucthucuong/xuly.php?iddanhmuc=<?php echo $_GET['iddanhmuc'] ?>">
    <?php
    while ($dong = mysqli_fetch_array($query_sua_danhmucthucuong)) {
    ?>
    <tr>
        <td>Tên danh mục</td>
        <td><input type="text" value="<?php echo $dong['tendanhmuc'] ?>" name="tendanhmuc"></td>
    </tr>
    <tr>
        <td>Thứ tự</td>
    <td><input type="text"  value="<?php echo $dong['thutu'] ?>" name="thutu"></td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" name="suadanhmuc" value="Sửa danh mục thức uống"></td>
    </tr>
    <?php
    }
    ?>
  </form>
</table>