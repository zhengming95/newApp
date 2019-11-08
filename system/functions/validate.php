<?php

//验证是否为指定长度的字母/数字组合

function validate_text1($num1, $num2, $str) {
    return (preg_match("/^[a-zA-Z0-9]{" . $num1 . "," . $num2 . "}$/", $str)) ? true : false;
}

//验证是否为指定长度数字

function validate_text2($num1, $num2, $str) {
    return (preg_match("/^[0-9]{" . $num1 . "," . $num2 . "}$/i", $str)) ? true : false;
}

//验证是否为指定长度汉字

function validate_font($num1, $num2, $str) {
// preg_match("/^[\xa0-\xff]{1,4}$/", $string);

    return (preg_match("/^([\x81-\xfe][\x40-\xfe]){" . $num1 . "," . $num2 . "}$/", $str)) ? true : false;
}

//验证身份证号码

function validate_status($str) {
    return (preg_match('/(^([\d]{15}|[\d]{18}|[\d]{17}x)$)/', $str)) ? true : false;
}

//验证邮件地址

function validate_email($str) {
    return (preg_match('/^[_\.0-9a-z-]+@([0-9a-z][0-9a-z-]+\.)+[a-z]{2,4}$/', $str)) ? true : false;
}

//验证电话号码

function validate_phone($str) {
    return (preg_match("/^((\(\d{3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}$/", $str)) ? true : false;
}

//验证邮编

function validate_zip($str) {
    return (preg_match("/^[1-9]\d{5}$/", $str)) ? true : false;
}

//验证url地址

function validate_url($str) {
    return (preg_match("/^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"\"])*$/", $str)) ? true : false;
}
