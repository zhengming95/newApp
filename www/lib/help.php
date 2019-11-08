<?php
!defined('APPPATH') && exit();
?>

数据库导出命令
mysqldump -u root -p dev02>dev02.sql
mysqldump -h mysql.sql34.eznowdata.com  -u sq_zhongfk -p sq_zhongfk>dev021.sql

数据库导入命令
mysql -h mysql.sql34.eznowdata.com -u sq_zhongfk  -p sq_zhongfk < dev02.sql


<?php
@header("Content-type: text/html; charset=utf-8");
require 'DBManage.class.php';

$db = new DBManage('localhost', 'root', 'root', 'dev02', 'utf8');
//
$db->backup();


//分别是主机，用户名，密码，数据库名，数据库编码
//$db = new DBManage('localhost', 'root', 'root', 'dev03', 'utf8');
//参数：sql文件
//$db->restore('./backup/20140413104533_all_v1.sql');


exit;
$fd = file_get_contents('20140413125919_#66573_all_v1.sql');

$data = explode("\n", $fd);
//var_dump($data);
$dataArr = array();
$sql = '';
foreach ($data as $key => $value) {
    $value = trim($value);
    if ($value != '') {
        $pos = strpos($value, '--');
        if ($pos !== 0) {
            if (substr($value, -1) == ';') {
                $sql .= $value;
                if ($sql != '') {
                    $dataArr[] = $sql;
                    $sql = '';
                }
            } else {
                $sql .= $value;
//                var_dump($value);
            }
        }
    }
}
var_dump($dataArr);
//$data = implode('___________________________', $dataArr);
//$data = explode(";", $data);
