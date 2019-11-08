<<?php
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


 ?>
