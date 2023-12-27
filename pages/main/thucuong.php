<p>Chi tiết sản phẩm</p>
<?php
    $sql_chitiet = "SELECT * FROM tbl_thucuong,tbl_danhmuc WHERE tbl_thucuong.id_danhmuc=tbl_danhmuc.id_danhmuc AND tbl_thucuong.id_thucuong='$_GET[id]' LIMIT 1";
    $query_chitiet = mysqli_query($mysqli,$sql_chitiet);
while ($row_chitiet = mysqli_fetch_array($query_chitiet)) {
?>
<div class="wrapper_chitiet">
    <div class="hinhanh_thucuong">
        <img width="80%" src="admincp/modules/quanlythucuong/uploads/<?php echo $row_chitiet['hinhanh'] ?>">
    </div>
    <form method="POST" action="pages/main/themgiohang.php?idthucuong=<?php echo $row_chitiet['id_thucuong'] ?>">
    <div class="chitiet_thucuong">
        <h3 style="margin:0">Tên thức uống: <?php echo $row_chitiet['tenthucuong'] ?></h3>
        <p>Mã thức uống: <?php echo $row_chitiet['mathucuong'] ?></p>
        <p>Giá thức uống: <?php echo number_format($row_chitiet['giathucuong'],0,',','.').' VNĐ' ?></p>
        <p>Số lượng: <?php echo $row_chitiet['soluong'] ?></p>
        <p>Danh mục thức uống: <?php echo $row_chitiet['tendanhmuc'] ?></p>
        <p><input class="themgiohang" name="themgiohang" type="submit" value="Thêm giỏ hàng"></p>
    </div>
    </form>
</div>
<?php
}
?>