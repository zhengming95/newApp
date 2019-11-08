<<?php
$id = intval($_REQUEST['id']);

include 'conn.php';

$sql = "delete from test where ID_=$id";
@sqlsrv_query($sql);
echo json_encode(array('success'=>true));
 ?>
