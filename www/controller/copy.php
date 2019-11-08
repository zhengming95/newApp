<?php

!defined('APPPATH') && exit();
if (!isset($_GET['theme'])) {
    exit();
}
//只允许内网访问
$onlineip = $_SERVER['REMOTE_ADDR'];

if (!($onlineip == 'localhost' || $onlineip != '127.0.0.1' || strpos($onlineip, "192.168"))) {
    echo '禁止访问';
    exit();
}

dir_copy(themeinfo('path'), APPPATH . '/html_dist/', $cover = true, false);

file_put_contents(APPPATH . '/html_dist/load.js', file_get_contents('http://' . $_SERVER["HTTP_HOST"] . '/themes/api-lib/js/loadjs.php'));
file_put_contents(APPPATH . '/html_dist/style.css', file_get_contents('http://' . $_SERVER["HTTP_HOST"] . '/themes/api-lib/css/loadcss.php'));

$files = file_list(themeinfo('path'), '/\.html/i');

$host = $_SERVER["HTTP_HOST"];
$bIp = gethostbyname(''); //获取本机的局域网IP
foreach ($files as $key => $value) {

    $value = str_replace('\\', '/', $value);
    $filename = str_replace(themeinfo('path'), '', $value);

    if (strrpos($filename, 'inc_') === FALSE && strrpos($filename, 'xpjc_') === FALSE) {
        $fd = file_get_contents('http://' . $_SERVER["HTTP_HOST"] . '/' . $filename . '?theme=' . $_GET['theme']);
        $fd = str_replace('<script type="text/javascript" src="http://' . $bIp . ':38999/xpjcadmin/reload.php?weinre-target=xpjc"></script>', '', $fd);
        $fd = str_replace('/themes/api-lib/css/loadcss.php', 'style.css', $fd);
        $fd = str_replace('/themes/api-lib/js/loadjs.php', 'load.js', $fd);

        $fd = str_replace('"footer.js"', '"footer.js?' . time() . '"', $fd);


        $fd = str_replace('http://' . $_SERVER["HTTP_HOST"] . '' . themeinfo('style'), '', $fd);

        $fd = str_replace($_SERVER["HTTP_HOST"], $host, $fd);
        file_put_contents(APPPATH . '/html_dist/' . $filename, $fd);
    }else{
        unlink(APPPATH . '/html_dist/' . $filename);
    }
}
dir_del(APPPATH . '/html_dist/admin');
//dir_copy(APPPATH . '/html_dist/', 'C:\\APICloud\\workspace\\apicloud_demo1\\html', $cover = true, false);
echo "完成" . time();

