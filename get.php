<?php
/*
* �����������ݿ���Ϣ
*/
$host='localhost';//����
$user='admin';//���ݿ��˺�
$password='123456';//���ݿ�����
$database='test';//���ݿ���
//�����ݿ�����
$db=mysqli_connect($host,$user,$password,$database);
//�ж������Ƿ�ɹ�
if($db){
        $db->query("set names utf8");//����UTF-8����(JSON��Ψһ����)
}else{
        echo 'DATABASE_CONNECTION_DIE';//���ݿ�����ʧ��
        exit;
}
//sql��ѯ���
$sql="select id,name,sex,age from person";
$result=$db->query($sql);
while($row=$result->fetch_assoc()){
        $person_info[]=$row;//��ȡ�õ��������ݸ�ֵ��person_info����
}
echo json_encode($person_info);//���JSON
?>