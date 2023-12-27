<?php
    session_start();
    include('../../admincp/config/config.php');
    //them so luong
    if(isset($_GET['cong'])){
        $id=$_GET['cong'];
        foreach ($_SESSION['cart'] as $cart_item){
            if ($cart_item['id'] != $id){
                $product[]= array('tenthucuong'=>$cart_item['tenthucuong'], 'id'=>$cart_item['id'], 'soluong' => $cart_item['soluong'], 'giathucuong' => $cart_item['giathucuong'], 'hinhanh' => $cart_item['hinhanh'], 'mathucuong' => $cart_item['mathucuong']);
                $_SESSION['cart'] = $product;
            }else{
                $tangsoluong = $cart_item['soluong'] + 1;
                if($cart_item['soluong']<=9){
                    $product[]= array('tenthucuong'=>$cart_item['tenthucuong'], 'id'=>$cart_item['id'], 'soluong' => $tangsoluong, 'giathucuong' => $cart_item['giathucuong'], 'hinhanh' => $cart_item['hinhanh'], 'mathucuong' => $cart_item['mathucuong']);
                }else{
                    $product[]= array('tenthucuong'=>$cart_item['tenthucuong'], 'id'=>$cart_item['id'], 'soluong' => $cart_item['soluong'], 'giathucuong' => $cart_item['giathucuong'], 'hinhanh' => $cart_item['hinhanh'], 'mathucuong' => $cart_item['mathucuong']);
                }
                $_SESSION['cart'] = $product;
            }
        }
        header('Location:../../index.php?quanly=giohang');
    }
    //tru so luong
    if(isset($_GET['tru'])){
        $id=$_GET['tru'];
        foreach ($_SESSION['cart'] as $cart_item){
            if ($cart_item['id'] != $id){
                $product[]= array('tenthucuong'=>$cart_item['tenthucuong'], 'id'=>$cart_item['id'], 'soluong' => $cart_item['soluong'], 'giathucuong' => $cart_item['giathucuong'], 'hinhanh' => $cart_item['hinhanh'], 'mathucuong' => $cart_item['mathucuong']);
                $_SESSION['cart'] = $product;
            }else{
                $giamsoluong = $cart_item['soluong'] - 1;
                if($cart_item['soluong']>1){
                    $product[]= array('tenthucuong'=>$cart_item['tenthucuong'], 'id'=>$cart_item['id'], 'soluong' => $giamsoluong, 'giathucuong' => $cart_item['giathucuong'], 'hinhanh' => $cart_item['hinhanh'], 'mathucuong' => $cart_item['mathucuong']);
                }else{
                    $product[]= array('tenthucuong'=>$cart_item['tenthucuong'], 'id'=>$cart_item['id'], 'soluong' => $cart_item['soluong'], 'giathucuong' => $cart_item['giathucuong'], 'hinhanh' => $cart_item['hinhanh'], 'mathucuong' => $cart_item['mathucuong']);
                }
                $_SESSION['cart'] = $product;
            }
        }
        header('Location:../../index.php?quanly=giohang');
    }
    //xoa thuc uong
    if (isset($_SESSION['cart']) && isset($_GET['xoa'])) {
        $id=$_GET['xoa'];
        foreach ($_SESSION['cart'] as $cart_item){
            if ($cart_item['id'] != $id) {
                $product[]= array('tenthucuong'=>$cart_item['tenthucuong'], 'id'=>$cart_item['id'], 'soluong' => $cart_item['soluong'], 'giathucuong' => $cart_item['giathucuong'], 'hinhanh' => $cart_item['hinhanh'], 'mathucuong' => $cart_item['mathucuong']);
            }
        $_SESSION['cart'] = $product;
        header('Location:../../index.php?quanly=giohang');
        }
    }
    //xoa tat ca
    if (isset($_GET['xoatatca']) && $_GET['xoatatca'] == 1) {
        unset($_SESSION['cart']);
        header('Location:../../index.php?quanly=giohang');
    }
    //them thuc uong vao gio hang
    if (isset($_POST['themgiohang'])){
        $id = $_GET['idthucuong'];
        $soluong = 1;
        $sql = "SELECT * FROM tbl_thucuong WHERE id_thucuong = '" . $id . "' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        $row = mysqli_fetch_array($query);
        if ($row) {
            $new_product = array(array('tenthucuong'=>$row['tenthucuong'], 'id'=>$id, 'soluong'=>$soluong, 'giathucuong'=>$row['giathucuong'], 'hinhanh'=>$row['hinhanh'], 'mathucuong'=>$row['mathucuong']));
            if (isset($_SESSION['cart'])) {
                $found = false;
                foreach ($_SESSION['cart'] as $cart_item) {
                    if ($cart_item['id']==$id) {
                        $product[]= array('tenthucuong'=>$cart_item['tenthucuong'], 'id'=>$cart_item['id'], 'soluong' => $soluong+1, 'giathucuong' => $cart_item['giathucuong'], 'hinhanh' => $cart_item['hinhanh'], 'mathucuong' => $cart_item['mathucuong']);
                        $found = true;
                    } else {
                        //neu du lieu khong trung
                        $product[]= array('tenthucuong'=>$cart_item['tenthucuong'], 'id'=>$cart_item['id'], 'soluong' => $cart_item['soluong'], 'giathucuong' => $cart_item['giathucuong'], 'hinhanh' => $cart_item['hinhanh'], 'mathucuong' => $cart_item['mathucuong']);
                    }
                }
                if($found == false){
                    //lien ket du lieu new_product voi product
                    $_SESSION['cart']=array_merge($product,$new_product);
                }else{
                    $_SESSION['cart']=$product;
                }
            }else{
                $_SESSION['cart'] = $new_product;
            }
        }
        header('Location:../../index.php?quanly=giohang');
    }
    
?>