<?php

function closetags($html) {
//    $html = strip_tags($html);


// 不需要补全的标签 
    $arr_single_tags = array('meta', 'img', 'br', 'link', 'area');
// 匹配开始标签 
    preg_match_all('#<([a-z]+)(?: .*)?(?<![/|/ ])>#iU', $html, $result);
    $openedtags = $result[1];
// 匹配关闭标签 
    preg_match_all('#</([a-z]+)>#iU', $html, $result);
    $closedtags = $result[1];
// 计算关闭开启标签数量，如果相同就返回html数据 
    $len_opened = count($openedtags);
    if (count($closedtags) == $len_opened) {
        return $html;
    }
// 把排序数组，将最后一个开启的标签放在最前面 
    $openedtags = array_reverse($openedtags);
// 遍历开启标签数组 
    for ($i = 0; $i < $len_opened; $i++) {
// 如果需要补全的标签 
        if (!in_array($openedtags[$i], $arr_single_tags)) {
// 如果这个标签不在关闭的标签中 
            if (!in_array($openedtags[$i], $closedtags)) {
// 直接补全闭合标签 
                $html .= '</' . $openedtags[$i] . '>';
            } else {
                unset($closedtags[array_search($openedtags[$i], $closedtags)]);
            }
        }
    }
    return $html;
}

echo closetags("<div>这里是被截取的html片段 ");


$str=preg_replace("/\s+/", " ", $str); //过滤多余回车 
$str=preg_replace("/<[ ]+/si","<",$str); //过滤<__("<"号后面带空格) 

$str=preg_replace("/<\!--.*?-->/si","",$str); //注释 
$str=preg_replace("/<(\!.*?)>/si","",$str); //过滤DOCTYPE 
$str=preg_replace("/<(\/?html.*?)>/si","",$str); //过滤html标签 
$str=preg_replace("/<(\/?head.*?)>/si","",$str); //过滤head标签 
$str=preg_replace("/<(\/?meta.*?)>/si","",$str); //过滤meta标签 
$str=preg_replace("/<(\/?body.*?)>/si","",$str); //过滤body标签 
$str=preg_replace("/<(\/?link.*?)>/si","",$str); //过滤link标签 
$str=preg_replace("/<(\/?form.*?)>/si","",$str); //过滤form标签 
$str=preg_replace("/cookie/si","COOKIE",$str); //过滤COOKIE标签 

$str=preg_replace("/<(applet.*?)>(.*?)<(\/applet.*?)>/si","",$str); //过滤applet标签 
$str=preg_replace("/<(\/?applet.*?)>/si","",$str); //过滤applet标签 

$str=preg_replace("/<(style.*?)>(.*?)<(\/style.*?)>/si","",$str); //过滤style标签 
$str=preg_replace("/<(\/?style.*?)>/si","",$str); //过滤style标签 

$str=preg_replace("/<(title.*?)>(.*?)<(\/title.*?)>/si","",$str); //过滤title标签 
$str=preg_replace("/<(\/?title.*?)>/si","",$str); //过滤title标签 

$str=preg_replace("/<(object.*?)>(.*?)<(\/object.*?)>/si","",$str); //过滤object标签 
$str=preg_replace("/<(\/?objec.*?)>/si","",$str); //过滤object标签 

$str=preg_replace("/<(noframes.*?)>(.*?)<(\/noframes.*?)>/si","",$str); //过滤noframes标签 
$str=preg_replace("/<(\/?noframes.*?)>/si","",$str); //过滤noframes标签 

$str=preg_replace("/<(i?frame.*?)>(.*?)<(\/i?frame.*?)>/si","",$str); //过滤frame标签 
$str=preg_replace("/<(\/?i?frame.*?)>/si","",$str); //过滤frame标签 

$str=preg_replace("/<(script.*?)>(.*?)<(\/script.*?)>/si","",$str); //过滤script标签 
$str=preg_replace("/<(\/?script.*?)>/si","",$str); //过滤script标签 
$str=preg_replace("/javascript/si","Javascript",$str); //过滤script标签 
$str=preg_replace("/vbscript/si","Vbscript",$str); //过滤script标签 
$str=preg_replace("/on([a-z]+)\s*=/si","On\\1=",$str); //过滤script标签 
$str=preg_replace("/&#/si","&＃",$str); //过滤script标签
