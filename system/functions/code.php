<?php

/**
 * 压缩html文件里的html代码，同时也可以压缩css、js代码 
 * @param $str 欲要压缩的字符串 
 * @return 返回压缩后的字符串代码 
 */
function code_compresshtml($string) {
    $string = str_replace("\r\n", '', $string); //清除换行符
    $string = str_replace("\n", '', $string); //清除换行符
    $string = str_replace("\t", '', $string); //清除制表符
    $pattern = array(
        "/> *([^ ]*) *</", //去掉注释标记
        "/[\s]+/",
        "/<!--[\\w\\W\r\\n]*?-->/",
        "/\" /",
        "/ \"/",
        "'/\*[^*]*\*/'"
    );
    $replace = array(
        ">\\1<",
        " ",
        "",
        "\"",
        "\"",
        ""
    );
    return preg_replace($pattern, $replace, $string);
}

function code_css_strip_whitespace($css) {
    $replace = array(
        "#/*.*?*/#s" => "", // Strip C style comments. 
        "#ss+#" => " ", // Strip excess whitespace. 
    );
    $search = array_keys($replace);
    $css = preg_replace($search, $replace, $css);
    $replace = array(
        ": " => ":",
        "; " => ";",
        " {" => "{",
        " }" => "}",
        ", " => ",",
        "{ " => "{",
        ";}" => "}", // Strip optional semicolons. 
        ",n" => ",", // Don't wrap multiple selectors. 
        "n}" => "}", // Don't wrap closing braces. 
        "} " => "}n", // Put each rule on it's own line. 
    );
    $search = array_keys($replace);
    $css = str_replace($search, $replace, $css);
    return trim($css);
}
