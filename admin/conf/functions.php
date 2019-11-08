<?php

!defined('APPPATH') && exit();
if (!function_exists('themeinfo')) {

    /**
     * 得到主题的相关知识
     * @param type $type
     * @return string 
     */
    function themeinfo($type) {
        $_str = '';
        switch ($type) {
            case 'uri':
                $_str = BASEURL . '/'; //这个是url对应的路径
                break;
            case 'path':
                $_str = BASEPATH . '/themes/' . THEME . '/'; //这个是php对应的路径
                break;
            case 'admin':
                $_str = BASEPATH . '/themes/' . ADMINPATH . '/admin/'; // 管理后台对应的文件结构
                break;
            case 'style':
                $_str = STATICURL . '/themes/' . THEME . '/'; //这个是php对应的路径
                break;
            case 'sys':
                $_str = STATICURL . '/';   //这个是php对应的路径
                break;
            default:
                $_str = "";
                break;
        }
        return $_str;
    }

}

if (!function_exists('the_header')) {

    function the_header() {
        if (file_exists(themeinfo('admin') . 'inc/header.php')) {
            require (themeinfo('admin') . 'inc/header.php');
        } else {
            require(themeinfo('path') . 'inc/header.php');
        }
    }

}
if (!function_exists('the_about')) {

    function the_about() {
        if (file_exists(themeinfo('admin') . 'inc/about.php')) {
            require (themeinfo('admin') . 'inc/about.php');
        } else {
            require(themeinfo('path') . 'inc/about.php');
        }
    }

}
if (!function_exists('the_sidebar')) {

    function the_sidebar() {
        if (file_exists(themeinfo('admin') . 'inc/sidebar.php')) {
            require (themeinfo('admin') . 'inc/sidebar.php');
        } else {
            require(themeinfo('path') . 'inc/sidebar.php');
        }
    }

}
if (!function_exists('the_footer')) {

    function the_footer() {
        if (file_exists(themeinfo('admin') . 'inc/footer.php')) {
            require (themeinfo('admin') . 'inc/footer.php');
        } else {
            require(themeinfo('path') . 'inc/footer.php');
        }
    }

}