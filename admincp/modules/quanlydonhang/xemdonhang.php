<p>Xem đơn hàng</p>
<?php
    $code = $_GET['code'];
    $sql_lietke_dh = "SELECT * FROM tbl_cart_details,tbl_thucuong WHERE tbl_cart_details.id_thucuong=tbl_thucuong.id_thucuong AND tbl_cart_details.code_cart ='".$code."' ORDER BY tbl_cart_details.id_cart_details DESC";
    $query_lietke_dh = mysqli_query($mysqli,$sql_lietke_dh);
?>
<table style="width:100%" border="1" style="border-collapse:collapse;"> 
    <tr>
        <th>Số thứ tự</th>
        <th>Mã đơn hàng</th>
        <th>Tên thức uống</th>
        <th>Số lượng</th>
        <th>Đơn giá</th>
        <th>Thành tiền</th>
    </tr>
    <?php
    $i = 0;
    $tongtien = 0;
    while ($row = mysqli_fetch_array($query_lietke_dh)){
        $i++;
        $thanhtien = $row['giathucuong']*$row['soluongmua'];
        $tongtien += $thanhtien;
    ?>
    <tr>
        <td><?php echo $i ?></td>
        <td><?php echo $row['code_cart'] ?></td>
        <td><?php echo $row['tenthucuong'] ?></td>
        <td><?php echo $row['soluongmua'] ?></td>
        <td><?php echo number_format($row['giathucuong'],0,',','.').' VNĐ' ?></td>
        <td><?php echo number_format($thanhtien,0,',','.').' VNĐ' ?></td>
    </tr>
    <?php
    }
    ?>
    <tr>
        <td colspan="6">
            <p>Tổng tiền : <?php echo number_format($tongtien,0,',','.').' VNĐ' ?></p>
        </td>
    </tr>
</table>