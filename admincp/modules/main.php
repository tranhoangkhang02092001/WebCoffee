<div class="clear"></div>
<div class="main">
    <?php
         if(isset($_GET['action']) && $_GET['query']){
            $tam = $_GET['action'];
            $query = $_GET['query'];
        }else{
            $tam = '';
            $query = '';
        }
        if($tam=='quanlydanhmucthucuong' && $query=='them'){
            include("modules/quanlydanhmucthucuong/them.php");
            include("modules/quanlydanhmucthucuong/lietke.php");
        }elseif($tam=='quanlydanhmucthucuong' && $query=='sua'){
            include("modules/quanlydanhmucthucuong/sua.php");
        }elseif($tam=='quanlythucuong' && $query=='them'){
            include("modules/quanlythucuong/them.php");
            include("modules/quanlythucuong/lietke.php");
        }elseif($tam=='quanlythucuong' && $query=='sua'){
            include("modules/quanlythucuong/sua.php");
        }elseif($tam=='quanlydonhang' && $query=='lietke'){
            include("modules/quanlydonhang/lietke.php");
        }elseif($tam=='donhang' && $query=='xemdonhang'){
            include("modules/quanlydonhang/xemdonhang.php");
        }elseif($tam=='quanlyweb' && $query=='capnhat'){
            include("modules/thongtinweb/quanly.php");
        }
    ?>
</div>
