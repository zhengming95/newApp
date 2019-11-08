<?php

header("Content-type:text/html;charset=utf8");
    //告诉浏览器不要缓存数据
    header("Cache-Control: no-cache");    
    $servern="AUTOBVT-VF2FDK8\MSSQLSERVER2012";

     $coninfo=array("Database"=>"WSXYL_BARCODE","UID"=>"sa","PWD"=>"123");

    //Guard、UID、PWD依次为数据库名、sa用户名、sa密码，根据个人配置修改即可

    $conn=sqlsrv_connect($servern,$coninfo) or die ("连接失败!");
    //show variables like 'character%';
    if($conn){ 

    echo "OK ！HELLO ELEPHANT<br />"; 
        //$conn->query("set names utf8");

    }else{ 

            echo "Connection could not be established.<br />"; 

            die( print_r(sqlsrv_errors(), true)); 

           } 
//@sqlsrv_query("SET NAMES GBK2312",$conn);
//编码转换函数
function utf8togb($s) {
return iconv('utf-8', 'gbk//IGNORE', $s); // IGNORE 参数是遇到不成转换的字符时忽略
}
 $sql = utf8togb("select * from QGG_USER");

 $stmt = sqlsrv_query( $conn, $sql );

 //eval('return '.iconv("GB2312//IGNORE", "UTF-8", var_export($stmt,true)).';');
 if( $stmt === false) {
   die( print_r( sqlsrv_errors(), true) );
 }
 while($row = sqlsrv_fetch_array($stmt,SQLSRV_FETCH_ASSOC))
 {echo $row['USER_NAME_']."-----".$row['STATUS_']."<br/>";}

$date=date('Y-m-d H:i:s',time());
echo $date;

?>