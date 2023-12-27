<div id="main">
    <?php
    include("sidebar/sidebar.php");
    ?>
            <div class="maincontent">
                <?php
                if(isset($_GET['quanly'])){
                    $tam = $_GET['quanly'];
                }else{
                    $tam = '';
                }
                if($tam=='danhmuc'){
                    include("main/danhmuc.php");
                }elseif($tam=='giohang'){
                    include("main/giohang.php");
                }elseif($tam=='lienhe'){
                    include("main/lienhe.php");
                }elseif($tam=='thucuong'){
                    include("main/thucuong.php");
                }elseif($tam=='dangky'){
                    include("main/dangky.php");
                }elseif($tam=='thanhtoan'){
                    include("main/thanhtoan.php");
                }elseif($tam=='dangnhap'){
                    include("main/dangnhap.php");
                }elseif($tam=='timkiem'){
                    include("main/timkiem.php");
                }elseif($tam=='camon'){
                    include("main/camon.php");
                }elseif($tam=='thaydoimatkhau'){
                    include("main/thaydoimatkhau.php");
                }else{
                    include("main/index.php");
                }
                ?>
            </div>
        </div>