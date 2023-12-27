<?php
include('../../config/config.php');

$tenthucuong = $_POST['tenthucuong'];
$mathucuong = $_POST['mathucuong'];
$giathucuong = $_POST['giathucuong'];
$soluong = $_POST['soluong'];
$hinhanh = $_FILES['hinhanh']['name'];
$hinhanh_tmp= $_FILES['hinhanh']['tmp_name'];
$hinhanh = time() . '_' . $hinhanh;
$tomtat = $_POST['tomtat'];
$noidung = $_POST['noidung'];
$tinhtrang = $_POST['tinhtrang'];
$danhmuc = $_POST['danhmuc'];

if(isset($_POST['themthucuong'])) {
    //them
    $sql_them = "INSERT INTO tbl_thucuong(tenthucuong,mathucuong,giathucuong,soluong,hinhanh,tomtat,noidung,tinhtrang,id_danhmuc) 
    VALUES('".$tenthucuong."','".$mathucuong."','".$giathucuong."','".$soluong."','".$hinhanh."','".$tomtat."','".$noidung."','".$tinhtrang."','".$danhmuc."')";
    mysqli_query($mysqli, $sql_them);
    move_uploaded_file($hinhanh_tmp, 'uploads/' . $hinhanh);
    header('Location:../../index.php?action=quanlythucuong&query=them');
} elseif (isset($_POST['suathucuong'])) {
    //sua
    if ($hinhanh!='') {
        move_uploaded_file($hinhanh_tmp, 'uploads/' . $hinhanh);
        $sql_update = "UPDATE tbl_thucuong SET tenthucuong='" . $tenthucuong . "',mathucuong='" . $mathucuong . "',giathucuong='" . $giathucuong . "',soluong='" . $soluong . "',hinhanh='" . $hinhanh . "',tomtat='" . $tomtat . "',noidung='" . $noidung . "',tinhtrang='" . $tinhtrang . "',id_danhmuc='" . $danhmuc . "' WHERE id_thucuong='$_GET[idthucuong]'";
        //xoa hinh anh cu
        $sql = "SELECT * FROM tbl_thucuong WHERE id_thucuong = '$_GET[idthucuong]' LIMIT 1";
        $query = mysqli_query($mysqli, $sql);
        while ($row = mysqli_fetch_array($query)) {
            unlink('uploads/' . $row['hinhanh']);
        }
    }else {
        $sql_update = "UPDATE tbl_thucuong SET tenthucuong='" . $tenthucuong . "',mathucuong='" . $mathucuong . "',giathucuong='" . $giathucuong . "',soluong='" . $soluong . "',tomtat='" . $tomtat . "',noidung='" . $noidung . "',tinhtrang='" . $tinhtrang . "',id_danhmuc='" . $danhmuc . "' WHERE id_thucuong='$_GET[idthucuong]'";
    }
    mysqli_query($mysqli, $sql_update);
    header('Location:../../index.php?action=quanlythucuong&query=them');
}else{
    //xoa
    $id = $_GET['idthucuong'];
    $sql = "SELECT * FROM tbl_thucuong WHERE id_thucuong = '$id' LIMIT 1";
    $query = mysqli_query($mysqli, $sql);
    while ($row = mysqli_fetch_array($query)) {
        unlink('uploads/' . $row['hinhanh']);
    }
    $sql_xoa = "DELETE FROM tbl_thucuong WHERE id_thucuong ='" . $id . "'";
    mysqli_query($mysqli, $sql_xoa);
    header('Location:../../index.php?action=quanlythucuong&query=them');
}
?>