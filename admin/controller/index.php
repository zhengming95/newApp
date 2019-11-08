<?php

!defined('APPPATH') && exit();

function c_index_index() {
    header("Content-type: text/html; charset=utf-8");
    global $args;
    require(themeinfo('path') . 'index.php');
}
