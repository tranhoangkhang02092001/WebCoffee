<?php
    $sql_lietke_thucuong = "SELECT * FROM tbl_thucuong,tbl_danhmuc WHERE tbl_thucuong.id_danhmuc=tbl_danhmuc.id_danhmuc ORDER BY id_thucuong DESC";
    $query_lietke_thucuong = mysqli_query($mysqli,$sql_lietke_thucuong);
?>
<p>Liệt kê danh mục thức uống</p>
<table style="width:100%" border="1" style="border-collapse:collapse;"> 
    <tr>
        <th>Id</th>
        <th>Tên sản phẩm</th>
        <th>Hình ảnh</th>
        <th>Giá</th>
        <th>Số lượng</th>
        <th>Danh mục</th>
        <th>Mã</th>
        <th>Tóm tắt</th>
        <th>Trạng thái</th>
        <th>Quản lý</th>
    </tr>
    <?php
    $i = 0;
    while ($row = mysqli_fetch_array($query_lietke_thucuong)){
        $i++;
    ?>
    <tr>
        <td><?php echo $i ?></td>
        <td><?php echo $row['tenthucuong'] ?></td>
        <td><img src="modules/quanlythucuong/uploads/<?php echo $row['hinhanh'] ?>" width="150px" ></td>
        <td><?php echo $row['giathucuong'] ?></td>
        <td><?php echo $row['soluong'] ?></td>
        <td><?php echo $row['tendanhmuc'] ?></td>
        <td><?php echo $row['mathucuong'] ?></td>
        <td><?php echo $row['tomtat'] ?></td>
        <td><?php if($row['tinhtrang']==1){
                 echo 'Kích hoạt';
            }else{
                 echo 'Ẩn';
            }
            ?>

        </td>
        <td>
            <a href="modules/quanlythucuong/xuly.php?idthucuong=<?php echo $row['id_thucuong'] ?>">Xóa</a> | 
            <a href="?action=quanlythucuong&query=sua&idthucuong=<?php echo $row['id_thucuong'] ?>">Sửa</a>
        </td>
    </tr>
    <?php
    }
    ?>
</table>