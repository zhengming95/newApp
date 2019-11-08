<?php
!defined('APPPATH') && exit();
require_cache(SYS . '/include/smtp.class.php');

/**
 * 邮件发送方法
 * @param type $smtpemailto 发送到的email
 * @param type $title 标题
 * @param string $mailbody 内容
 * @param type $smtpusermail 发送者的邮箱
 */
function email_send($smtpemailto, $title, $mailbody, $smtpusermail = SMTPUSERMAIL) {

    $mailsubject = "=?UTF-8?B?" . base64_encode($title) . "?=";     //解决标题乱码问题

    $mailbody = "<meta http-equiv='Content-Type' content='text/html; charset=utf-8' /> " . $mailbody;

    $mailtype = "HTML"; //邮件格式（HTML/TXT）,TXT为文本邮件

    $smtp = new smtp(SMTPSERVER, SMTPSERVERPORT, true, SMTPUSER, SMTPPASS); //这里面的一个true是表示使用身份验证,否则不使用身份验证.
    $smtp->debug = FALSE; //是否显示发送的调试信息
    $smtp->sendmail($smtpemailto, $smtpusermail, $mailsubject, $mailbody, $mailtype);
}
