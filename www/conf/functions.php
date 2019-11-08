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
                $_str = TPLDIR . THEME . '/'; //这个是php对应的路径
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

if (!function_exists('the_nav')) {

    function the_nav() {
        if (file_exists(themeinfo('admin') . 'inc/nav.php')) {
            require (themeinfo('admin') . 'inc/nav.php');
        } else {
            require(themeinfo('path') . 'inc/nav.php');
        }
    }

}


if (!function_exists('the_slideshow')) {

    /**
     * 幻灯片
     */
    function the_slideshow() {
        if (file_exists(themeinfo('admin') . 'inc/slideshow.php')) {
            require (themeinfo('admin') . 'inc/slideshow.php');
        } else {
            require(themeinfo('path') . 'inc/slideshow.php');
        }
    }

}


if (!function_exists('the_breadcrumb')) {

    /**
     * 面包屑
     */
    function the_breadcrumb() {
        if (file_exists(themeinfo('admin') . 'inc/breadcrumb.php')) {
            require (themeinfo('admin') . 'inc/breadcrumb.php');
        } else {
            require(themeinfo('path') . 'inc/breadcrumb.php');
        }
    }

}

if (!function_exists('url')) {

    /**
     * 生成url
     * @param type $Ctrl
     * @param type $out
     * @return string
     */
    function url($Ctrl, $out = true) {
        if (is_a($Ctrl, 'DB_Posts')) {
            $str = themeinfo('uri') . $Ctrl->getPostType() . '-detail/' . $Ctrl->getPostId();
            if ($out) {
                echo $str;
            } else {
                return $str;
            }
        } else if (is_string($Ctrl)) {
            $str = themeinfo('uri') . ($Ctrl);
            if ($out) {
                echo $str;
            } else {
                return $str;
            }
        }

//        if (is_object($Ctrl)) {
//            $object_name = get_class($Ctrl);
//            echo $object_name;
//        }
//        var_dump($Ctrl);
//        $Ctrl = new CTRL_Posts();
//        $Ctrl->setPostType('product');
    }

}
    