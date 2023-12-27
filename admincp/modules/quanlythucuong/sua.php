<?php
    $sql_sua_thucuong = "SELECT * FROM tbl_thucuong WHERE id_thucuong='$_GET[idthucuong]' LIMIT 1";
    $query_sua_thucuong = mysqli_query($mysqli,$sql_sua_thucuong);
?>
<p>Sửa thức uống</p>
<table border="1" width="100%" style="border-collapse:collapse;">
<?php
while ($row = mysqli_fetch_array($query_sua_thucuong)){
?>
<form method="POST" action="modules/quanlythucuong/xuly.php?idthucuong=<?php echo $row['id_thucuong'] ?>" enctype="multipart/form-data">
    <tr>
        <td>Tên thức uống</td>
        <td><input type="text" value="<?php echo $row['tenthucuong'] ?>" name="tenthucuong"></td>
    </tr>
    <tr>
        <td>Mã thức uống</td>
        <td><input type="text" value="<?php echo $row['mathucuong'] ?>" name="mathucuong"></td>
    </tr>
    <tr>
        <td>Giá thức uống</td>
        <td><input type="text" value="<?php echo $row['giathucuong'] ?>" name="giathucuong"></td>
    </tr>
    <tr>
        <td>Số lượng</td>
        <td><input type="text" value="<?php echo $row['soluong'] ?>" name="soluong"></td>
    </tr>
    <tr>
        <td>Hình ảnh</td>
        <td>
            <input type="file" name="hinhanh">
            <img src="modules/quanlythucuong/uploads/<?php echo $row['hinhanh'] ?>" width="150px" >
        </td>

    </tr>
    <tr>
        <td>Tóm tắt</td>
        <td><textarea rows="10" name="tomtat" style"resize: none"><?php echo $row['tomtat'] ?></textarea></td>
    </tr>
    <tr>
        <td>Nội dung</td>
        <td><textarea rows="10" name="noidung" style"resize: none"><?php echo $row['noidung'] ?></textarea></td>
    </tr>
    <tr>
        <td>Danh mục thức uống</td>
        <td>
            <select name="danhmuc">
                <?php
                $sql_danhmuc = "SELECT * FROM tbl_danhmuc ORDER BY id_danhmuc DESC";
                $query_danhmuc = mysqli_query($mysqli, $sql_danhmuc);
                while ($row_danhmuc = mysqli_fetch_array($query_danhmuc)) {
                    if($row_danhmuc['id_danhmuc']==$row['id_danhmuc']){
                ?>
                <option selected value="<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></option>
                <?php
                    }else{
                ?>
                <option value="<?php echo $row_danhmuc['id_danhmuc'] ?>"><?php echo $row_danhmuc['tendanhmuc'] ?></option>
                <?php
                    }
                }
                ?>
            </select>
        </td>
    </tr>
    <tr>
        <td>Tình trạng</td>
        <td>
            <select name="tinhtrang">
                <?php
                if($row['tinhtrang'] ==1){
                ?>
                <option value="1" selected>Kích hoạt</option>
                <option value="0">Ẩn</option>
                <?php
                }else{
                ?>
                <option value="1">Kích hoạt</option>
                <option value="0" selected>Ẩn</option>
                <?php
                }
                ?>
            </select>
        </td>
    </tr>
    <tr>
        <td colspan="2"><input type="submit" name="suathucuong" value="Sửa thức uống"></td>
    </tr>
  </form>
  <?php
  }
  ?>
</table>