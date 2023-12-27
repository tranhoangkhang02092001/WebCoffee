<?php
    $sql_pro = "SELECT * FROM tbl_thucuong WHERE tbl_thucuong.id_danhmuc='$_GET[id]' ORDER BY id_thucuong DESC";
    $query_pro = mysqli_query($mysqli,$sql_pro);
    //get ten danh muc
    $sql_cate = "SELECT * FROM tbl_danhmuc WHERE tbl_danhmuc.id_danhmuc='$_GET[id]' LIMIT 1";
    $query_cate = mysqli_query($mysqli,$sql_cate);
    $row_title = mysqli_fetch_array($query_cate);
?>
<h3>Danh mục thức uống: <?php echo $row_title['tendanhmuc'] ?></h3>
                <ul class="product_list">
                    <?php
                    while ($row_pro = mysqli_fetch_array($query_pro)) {
                    ?>
                    <li>
                        <a href="index.php?quanly=thucuong&id=<?php echo $row_pro['id_thucuong'] ?>">
                        <img src="admincp/modules/quanlythucuong/uploads/<?php echo $row_pro['hinhanh'] ?>">
                        <p class="title_product"><?php echo $row_pro['tenthucuong'] ?></p>
                        <p class="price_product">Giá: <?php echo number_format($row_pro['giathucuong'],0,',','.').' VNĐ' ?></p>
                        </a>
                    </li>
                    <?php
                    }
                    ?>
                </ul>