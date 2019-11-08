<?php

/**
 * <label for="bbbbbbbbbbbb">aaaaaaaaaaaaa</label>
 *  <input type="text" name="bbbbbbbbbbbb" id="bbbbbbbbbbbb" />
 */
class Form {

    public static function text($config) {
        $str = "<span>";
        if (isset($config['label'])) {
            $str .= '<label class="formlabel ' . $config['name'] . '" for="' . $config['name'] . '">' . $config['label'] . '</label>';
        }
        if (isset($config['label'])) {
            $str .= '<input type="text" name="' . $config['name'] . '" id="' . $config['name'] . '" style="' . $config['style'] . '" value="' . $config['value'] . '" />';
        }
        $str .= "</span>";
        return $str;
    }

    public static function applink($config) {
        $c = '';
        if (isset($config['class'])) {
            $c = '' . $config['class'] . '';
        }
        $str = "<span>";
        $str .= '<a class="app-link ' . $c . '" href="' . $config['link'] . '" ' . $c . ' app-href="' . $config['link'] . '" app-title="' . $config['title'] . '" title="' . $config['title'] . '">' . $config['label'] . '</a>';
        $str .= "</span>";
        return $str;
    }

    public static function deletepost($config) {
        $c = '';
        if (isset($config['class'])) {
            $c = '' . $config['class'] . '';
        }
        $str = "<span>";
        $str .= '<a class="delete ' . $c . '" href="' . $config['link'] . '" post_title="' . $config['title'] . '" post_id="' . $config['id'] . '">删除</a>';
        $str .= "</span>";
        return $str;
    }

    public static function textarea($config) {
        $str = "<span>";
        if (isset($config['label'])) {
            $str .= '<label class="formlabel ' . $config['name'] . '" for="' . $config['name'] . '">' . $config['label'] . '</label>';
        }
        if (isset($config['label'])) {
            $str .= '<textarea type="text" name="' . $config['name'] . '" id="' . $config['name'] . ' style="' . $config['style'] . '" >' . $config['value'] . '</textarea>';
        }
        $str .= "</span>";
        return $str;
    }

    public static function checkbox($config) {
        
    }

    public static function radio($config) {
        
    }

    public static function select($config) {
        
    }

    public static function img($config) {
        
    }

    public static function hidden($config) {
        
    }

}
