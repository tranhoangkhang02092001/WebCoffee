<?php
    if (isset($_GET['trang'])){
        $page = $_GET['trang'];
    }else{
        $page = '';
    }
    if ($page == '' || $page == 1) {
        $begin = 0;
    }else{
        $begin = ($page*3)-3;
    }
    $sql_pro = "SELECT * FROM tbl_thucuong,tbl_danhmuc WHERE tbl_thucuong.id_danhmuc=tbl_danhmuc.id_danhmuc ORDER BY tbl_thucuong.id_thucuong DESC LIMIT $begin,10";
    $query_pro = mysqli_query($mysqli,$sql_pro);
    
?>
<h3>Thức uống mới nhất</h3>
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
                <div style="clear:both;"></div>
                <style type="text/css">
                    ul.list_trang {
                        padding: 0;
                        margin: 0;
                        list-style: none;
                    }
                    ul.list_trang li {
                        float: left;
                        padding: 5px 13px;
                        margin: 5px;
                        background: burlywood;
                        display: block;
                    }
                    ul.list_trang li a{
                       color: #000;
                       text-align: center;
                       text-decoration: none;
                    }
                </style>
                 <?php
                $sql_trang = mysqli_query($mysqli,"SELECT * FROM tbl_thucuong");
                $row_count = mysqli_num_rows($sql_trang);
                $trang = ceil($row_count / 9);
                ?>
                <p>Trang hiện tại: <?php echo $page ?>/<?php echo $trang ?></p>
                <ul class="list_trang">
                    <?php
                    for($i=1;$i<=$trang;$i++){
                    ?>
                        <li <?php if($i==$page){echo 'style="background: red;"';}else{echo '';} ?>><a href="index.php?trang=<?php echo $i ?>"><?php echo $i ?></a></li>
                    <?php
                    }
                    ?>
                    
                </ul>