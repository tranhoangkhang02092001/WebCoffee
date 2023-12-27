<?php
    if (isset($_POST['timkiem'])){
        $tukhoa = $_POST['tukhoa'];
    }
    $sql_pro = "SELECT * FROM tbl_thucuong,tbl_danhmuc WHERE tbl_thucuong.id_danhmuc=tbl_danhmuc.id_danhmuc AND tbl_thucuong.tenthucuong LIKE '%".$tukhoa."%'";
    $query_pro = mysqli_query($mysqli,$sql_pro);

?>
<h3>Từ khóa tìm kiếm: <?php echo $_POST['tukhoa'] ?></h3>
                <ul class="product_list">
                    <?php
                    while($row = mysqli_fetch_array($query_pro)){
                    ?>
                    <li>
                        <a href="index.php?quanly=thucuong&id=<?php echo $row['id_thucuong'] ?>">
                        <img src="admincp/modules/quanlythucuong/uploads/<?php echo $row['hinhanh'] ?>">
                        <p class="title_product"><?php echo $row['tenthucuong'] ?></p>
                        <p class="price_product">Giá: <?php echo number_format($row['giathucuong'],0,',','.').' VNĐ' ?></p>
                        <p style="text-align: center;color:#d1d1d1"><?php echo $row['tendanhmuc'] ?></p>
                        </a>
                    </li>
                    <?php
                    }
                    ?>                  
                </ul>