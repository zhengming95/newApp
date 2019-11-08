<<?php
$sql = utf8togb("select ID_,first_name,last_name,email,phone from test");

$stmt = sqlsrv_query( $conn, $sql );

//eval('return '.iconv("GB2312//IGNORE", "UTF-8", var_export($stmt,true)).';');
if( $stmt === false) {
  die( print_r( sqlsrv_errors(), true) );
}
while($row = sqlsrv_fetch_array($stmt,SQLSRV_FETCH_ASSOC))
{echo json_encode(iconv('GB2312//IGNORE','utf-8',var_export($row,true)))."<br/>";}

$date=date('Y-m-d H:i:s',time());
echo $date;
 ?>
