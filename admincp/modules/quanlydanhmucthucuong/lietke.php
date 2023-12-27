<?php
    $sql_lietke_danhmucthucuong = "SELECT * FROM tbl_danhmuc ORDER BY thutu DESC";
    $query_lietke_danhmucthucuong = mysqli_query($mysqli,$sql_lietke_danhmucthucuong);
?>
<p>Liệt kê danh mục thức uống</p>
<table style="width:100%" border="1" style="border-collapse:collapse;"> 
    <tr>
        <th>Id</th>
        <th>Tên danh mục</th>
        <th>Quản lý</th>
    </tr>
    <?php
    $i = 0;
    while ($row = mysqli_fetch_array($query_lietke_danhmucthucuong)){
        $i++;
    ?>
    <tr>
        <td><?php echo $i ?></td>
        <td><?php echo $row['tendanhmuc'] ?></td>
        <td>
            <a href="modules/quanlydanhmucthucuong/xuly.php?iddanhmuc=<?php echo $row['id_danhmuc'] ?>">Xóa</a> | 
            <a href="?action=quanlydanhmucthucuong&query=sua&iddanhmuc=<?php echo $row['id_danhmuc'] ?>">Sửa</a>
        </td>
    </tr>
    <?php
    }
    ?>
</table>