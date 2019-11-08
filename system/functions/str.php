<?php

/**
 * 对字符串进行过滤
 * @param type $str
 * @return type 
 */
function str_encode($str) {
    if (is_null($str)) {
        return $str;
    }
    $str = $str ? $str : "";

//    $str = str_replace('  ', ' ', $str);  //去掉中间多余的空格的空格
    $str = str_replace('`', '', $str);  //去掉``，防止运行外部命令
//    $str = str_replace("'", "\\\'", $str);  //去掉中间多余的空格的空格
//    $str = html_entity_decode($str);
//    $str = str_RemoveXSS($str); //防止XSS
    $str = htmlspecialchars($str, ENT_QUOTES);   //防止XSS
//    $str = htmlentities($str, ENT_QUOTES);   //防止XSS
    $str = trim($str);  //去掉首尾空格
    if (get_magic_quotes_gpc()) {
        $str = stripslashes($str);
    } else {
        $str = addslashes($str);
    }
    return $str;
}

/**
 * 字符串输出
 * @param type $str
 * @return type 
 */
function str_decode($str) {
    $str = trim($str);  //去掉首尾空格
    $str = htmlspecialchars_decode($str, ENT_QUOTES);   //防止XSS
//    $str = html_entity_decode($str, ENT_QUOTES);   //防止XSS
//    $str = str_replace('&nbsp;', ' ', $str);
    return $str;
}

/**
 * 处理html信息
 * @param type $str
 * @return type 
 */
function str_encode_html($str) {
    $str = stripslashes(trim($str));   //防止XSS
    return $str;
}

/**
 * utf8  编码的汉字转化为拼音格式
 * @param type $str
 * @return type 
 */
function str_to_pinyin($str) {
    include_once(BASEPATH . '/system/include/pinyin.php');
    $str = iconv("UTF-8", "gb2312", $str);
    return _getPinyin($str);
}

//大驼峰命名
function str_to_CamelCase_big($str) {
    $v = explode('_', $str);
    $cName = '';
    foreach ($v as $kk => $vv) {
        $cName .= ucwords(strtolower($vv));
    }
    return $cName;
}

//小驼峰命名
function str_to_CamelCase_small($str) {
    $flag = false;
    $v = explode('_', $str);
    $cName = '';
    foreach ($v as $kk => $vv) {
        if ($flag) {
            $cName .= ucwords(strtolower($vv));
        } else {
            $flag = TRUE;
            $cName .= (strtolower($vv));
        }
    }
    return $cName;
}

/**
 * 字符串截取 
 */
function str_sub($sourcestr, $cutlength, $outex = true) {
    $sourcestr = trim($sourcestr);
    $returnstr = '';
    $i = 0;
    $n = 0;
    //去除html 标记 
    $search = array("'<script[^>]*?>.*?</script>'si", // 去掉 javascript
        "'<[\/\!]*?[^<>]*?>'si", // 去掉 HTML 标记
        "'([\r\n])[\s]+'", // 去掉空白字符
        "'&(quot|#34);'i", // 替换 HTML 实体
        "'&(amp|#38);'i",
        "'&(lt|#60);'i",
        "'&(gt|#62);'i",
        "'&(nbsp|#160);'i",
        "'&(iexcl|#161);'i",
        "'&(cent|#162);'i",
        "'&(pound|#163);'i",
        "'&(copy|#169);'i",
        "'&#(\d+);'e"); // 作为 PHP 代码运行

    $replace = array("",
        "",
        "\\1",
        "\"",
        "&",
        "<",
        ">",
        " ",
        chr(161),
        chr(162),
        chr(163),
        chr(169),
        "chr(\\1)");
    $sourcestr = preg_replace($search, $replace, $sourcestr);
    $str_length = strlen($sourcestr); //字符串的字节数
    while (($n < $cutlength) and ( $i <= $str_length)) {
        $temp_str = substr($sourcestr, $i, 1);
        $ascnum = Ord($temp_str); //得到字符串中第$i位字符的ascii码
        if ($ascnum >= 224) {    //如果ASCII位高与224，
            $returnstr = $returnstr . substr($sourcestr, $i, 3); //根据UTF-8编码规范，将3个连续的字符计为单个字符       
            $i = $i + 3;            //实际Byte计为3
            $n++;            //字串长度计1
        } elseif ($ascnum >= 192) { //如果ASCII位高与192，
            $returnstr = $returnstr . substr($sourcestr, $i, 2); //根据UTF-8编码规范，将2个连续的字符计为单个字符
            $i = $i + 2;            //实际Byte计为2
            $n++;            //字串长度计1
        } elseif ($ascnum >= 65 && $ascnum <= 90) { //如果是大写字母，
            $returnstr = $returnstr . substr($sourcestr, $i, 1);
            $i = $i + 1;            //实际的Byte数仍计1个
            $n++;            //但考虑整体美观，大写字母计成一个高位字符
        } else {                //其他情况下，包括小写字母和半角标点符号，
            $returnstr = $returnstr . substr($sourcestr, $i, 1);
            $i = $i + 1;            //实际的Byte数计1个
            $n = $n + 0.5;        //小写字母和半角标点等与半个高位字符宽...
        }
    }
    if ($outex) {
        if ($str_length > $i) {
            $returnstr = $returnstr . "..."; //超过长度时在尾处加上省略号
        }
    }
    return htmlspecialchars($returnstr);
}

/**
 * 数据加密
 */
if (!defined("SYSPASSKEY")) {
    define("SYSPASSKEY", 'duanjingyang#xpjc');
}

/**
 * 优化的加密算法base64编码 可用于url
 * @param type $txt
 * @param type $key
 * @return type
 */
function str_encrypt_base64($txt, $key = SYSPASSKEY) {
    if ($txt == '') {
        return '';
    }
    $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.";
    $ikey = "6OjxKiGj/jj0V0fOPbrDS4KvE4.";
    $nh1 = rand(0, 64);
    $nh2 = rand(0, 64);
    $nh3 = rand(0, 64);
    $ch1 = $chars{$nh1};
    $ch2 = $chars{$nh2};
    $ch3 = $chars{$nh3};
    $nhnum = $nh1 + $nh2 + $nh3;
    $knum = 0;
    $i = 0;
    while (isset($key{$i}))
        $knum +=ord($key{$i++});
    $mdKey = substr(md5(md5(md5($key . $ch1) . $ch2 . $ikey) . $ch3), $nhnum % 8, $knum % 8 + 16);
    $txt = base64_encode($txt);
    $txt = str_replace(array('+', '/', '='), array('-', '_', '.'), $txt);
    $tmp = '';
    $j = 0;
    $k = 0;
    $tlen = strlen($txt);
    $klen = strlen($mdKey);
    for ($i = 0; $i < $tlen; $i++) {
        $k = $k == $klen ? 0 : $k;
        $j = ($nhnum + strpos($chars, $txt{$i}) + ord($mdKey{$k++})) % 64;
        $tmp .= $chars{$j};
    }
    $tmplen = strlen($tmp);
    $tmp = substr_replace($tmp, $ch3, $nh2 % ++$tmplen, 0);
    $tmp = substr_replace($tmp, $ch2, $nh1 % ++$tmplen, 0);
    $tmp = substr_replace($tmp, $ch1, $knum % ++$tmplen, 0);
    return $tmp;
}

function str_decrypt_base64($txt, $key = SYSPASSKEY) {
    if ($txt == '') {
        return '';
    }
    ob_start();
    $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_.";
    $ikey = "6OjxKiGj/jj0V0fOPbrDS4KvE4.";
    $knum = 0;
    $i = 0;
    $tlen = strlen($txt);
    while (isset($key{$i}))
        $knum +=ord($key{$i++});
    $ch1 = $txt{$knum % $tlen};
    $nh1 = strpos($chars, $ch1);
    $txt = substr_replace($txt, '', $knum % $tlen--, 1);
    $ch2 = $txt{$nh1 % $tlen};
    $nh2 = strpos($chars, $ch2);
    $txt = substr_replace($txt, '', $nh1 % $tlen--, 1);
    $ch3 = $txt{$nh2 % $tlen};
    $nh3 = strpos($chars, $ch3);
    $txt = substr_replace($txt, '', $nh2 % $tlen--, 1);
    $nhnum = $nh1 + $nh2 + $nh3;
    $mdKey = substr(md5(md5(md5($key . $ch1) . $ch2 . $ikey) . $ch3), $nhnum % 8, $knum % 8 + 16);
    $tmp = '';
    $j = 0;
    $k = 0;
    $tlen = strlen($txt);
    $klen = strlen($mdKey);
    for ($i = 0; $i < $tlen; $i++) {
        $k = $k == $klen ? 0 : $k;
        $j = strpos($chars, $txt{$i}) - $nhnum - ord($mdKey{$k++});
        while ($j < 0)
            $j+=64;
        $tmp .= $chars{$j};
    }
    $tmp = str_replace(array('-', '_', '.'), array('+', '/', '='), $tmp);
    ob_end_clean();
    return base64_decode($tmp);
}

/**
 * 字符串加密可逆算法
 * @param type $txt
 * @param type $key
 * @return type 
 */
function str_encrypt_u($txt, $key = SYSPASSKEY) {
    srand((double) microtime() * 1000000);
    $encrypt_key = md5(rand(0, 32000));
    $ctr = 0;
    $tmp = '';
    for ($i = 0; $i < strlen($txt); $i++) {
        $ctr = $ctr == strlen($encrypt_key) ? 0 : $ctr;
        $tmp .= $encrypt_key[$ctr] . ($txt[$i] ^ $encrypt_key[$ctr++]);
    }
    return str_passport_key($tmp, $key);
}

function str_decrypt_u($txt, $key = SYSPASSKEY) {
    $txt = str_passport_key($txt, $key);
    $tmp = '';
    for ($i = 0; $i < strlen($txt); $i++) {
        $md5 = $txt[$i];
        $tmp .= $txt[++$i] ^ $md5;
    }
    return $tmp;
}

function str_passport_key($txt, $encrypt_key) {
    $encrypt_key = md5($encrypt_key);
    $ctr = 0;
    $tmp = '';
    for ($i = 0; $i < strlen($txt); $i++) {
        $ctr = $ctr == strlen($encrypt_key) ? 0 : $ctr;
        $tmp .= $txt[$i] ^ $encrypt_key[$ctr++];
    }
    return $tmp;
}

/**
 * 验证密码是否正确
 * @param type $password
 * @param type $oldpassword
 */
function str_password_chk($password, $oldpassword) {
    require_cache(SYS . '/include/PasswordHash.class.php');
    $t_hasher = new PasswordHash(8, TRUE);
    return $t_hasher->CheckPassword($password, $oldpassword);
}

/**
 * 把字符串加密为密码格式
 * @param type $password
 */
function str_password_mk($password) {
    require_cache(SYS . '/include/PasswordHash.class.php');
    $t_hasher = new PasswordHash(8, TRUE);
    return $t_hasher->HashPassword($password);
}

/**
 * 字符串截取 
 */
function str_cutStr($sourcestr, $cutlength) {
    $sourcestr = trim($sourcestr);
    $returnstr = '';
    $i = 0;
    $n = 0;
    //去除html 标记 
    $search = array("'<script[^>]*?>.*?</script>'si", // 去掉 javascript
        "'<[\/\!]*?[^<>]*?>'si", // 去掉 HTML 标记
        "'([\r\n])[\s]+'", // 去掉空白字符
        "'&(quot|#34);'i", // 替换 HTML 实体
        "'&(amp|#38);'i",
        "'&(lt|#60);'i",
        "'&(gt|#62);'i",
        "'&(nbsp|#160);'i",
        "'&(iexcl|#161);'i",
        "'&(cent|#162);'i",
        "'&(pound|#163);'i",
        "'&(copy|#169);'i",
        "'&#(\d+);'e"); // 作为 PHP 代码运行

    $replace = array("",
        "",
        "\\1",
        "\"",
        "&",
        "<",
        ">",
        " ",
        chr(161),
        chr(162),
        chr(163),
        chr(169),
        "chr(\\1)");
    $sourcestr = preg_replace($search, $replace, $sourcestr);
    ;
    $str_length = strlen($sourcestr); //字符串的字节数
    while (($n < $cutlength) and ( $i <= $str_length)) {
        $temp_str = substr($sourcestr, $i, 1);
        $ascnum = Ord($temp_str); //得到字符串中第$i位字符的ascii码
        if ($ascnum >= 224) {    //如果ASCII位高与224，
            $returnstr = $returnstr . substr($sourcestr, $i, 3); //根据UTF-8编码规范，将3个连续的字符计为单个字符       
            $i = $i + 3;            //实际Byte计为3
            $n++;            //字串长度计1
        } elseif ($ascnum >= 192) { //如果ASCII位高与192，
            $returnstr = $returnstr . substr($sourcestr, $i, 2); //根据UTF-8编码规范，将2个连续的字符计为单个字符
            $i = $i + 2;            //实际Byte计为2
            $n++;            //字串长度计1
        } elseif ($ascnum >= 65 && $ascnum <= 90) { //如果是大写字母，
            $returnstr = $returnstr . substr($sourcestr, $i, 1);
            $i = $i + 1;            //实际的Byte数仍计1个
            $n++;            //但考虑整体美观，大写字母计成一个高位字符
        } else {                //其他情况下，包括小写字母和半角标点符号，
            $returnstr = $returnstr . substr($sourcestr, $i, 1);
            $i = $i + 1;            //实际的Byte数计1个
            $n = $n + 0.5;        //小写字母和半角标点等与半个高位字符宽...
        }
    }
    if ($str_length > $i) {
        $returnstr = $returnstr . "..."; //超过长度时在尾处加上省略号
    }
    return htmlspecialchars($returnstr);
}

/**
 * 截取HTML,并自动补全闭合
 * @param $html
 * @param $length
 * @param $end
 */
function str_subHtml($html, $length) {
    $result = '';
    $tagStack = array();
    $len = 0;

    $contents = preg_split("~(<[^>]+?>)~si", $html, -1, PREG_SPLIT_NO_EMPTY | PREG_SPLIT_DELIM_CAPTURE);
    foreach ($contents as $tag) {
        if (trim($tag) == "")
            continue;
        if (preg_match("~<([a-z0-9]+)[^/>]*?/>~si", $tag)) {
            $result .= $tag;
        } else if (preg_match("~</([a-z0-9]+)[^/>]*?>~si", $tag, $match)) {
            if ($tagStack[count($tagStack) - 1] == $match[1]) {
                array_pop($tagStack);
                $result .= $tag;
            }
        } else if (preg_match("~<([a-z0-9]+)[^/>]*?>~si", $tag, $match)) {
            array_push($tagStack, $match[1]);
            $result .= $tag;
        } else if (preg_match("~<!--.*?-->~si", $tag)) {
            $result .= $tag;
        } else {
            if ($len + str_mstrlen($tag) < $length) {
                $result .= $tag;
                $len += str_mstrlen($tag);
            } else {
                $str = str_msubstr($tag, 0, $length - $len + 1);
                $result .= $str;
                break;
            }
        }
    }
    while (!empty($tagStack)) {
        $result .= '</' . array_pop($tagStack) . '>';
    }
    return $result;
}

/**
 * 截取中文字符串
 * @param $string 字符串
 * @param $start 起始位
 * @param $length 长度
 * @param $charset  编码
 * @param $dot 附加字串
 */
function str_msubstr($string, $start, $length, $dot = '', $charset = 'UTF-8') {
    $string = str_replace(array('&amp;', '&quot;', '&lt;', '&gt;', '&nbsp;'), array('&', '"', '<', '>', ' '), $string);
    if (strlen($string) <= $length) {
        return $string;
    }

    if (strtolower($charset) == 'utf-8') {
        $n = $tn = $noc = 0;
        while ($n < strlen($string)) {
            $t = ord($string[$n]);
            if ($t == 9 || $t == 10 || (32 <= $t && $t <= 126)) {
                $tn = 1;
                $n++;
            } elseif (194 <= $t && $t <= 223) {
                $tn = 2;
                $n += 2;
            } elseif (224 <= $t && $t <= 239) {
                $tn = 3;
                $n += 3;
            } elseif (240 <= $t && $t <= 247) {
                $tn = 4;
                $n += 4;
            } elseif (248 <= $t && $t <= 251) {
                $tn = 5;
                $n += 5;
            } elseif ($t == 252 || $t == 253) {
                $tn = 6;
                $n += 6;
            } else {
                $n++;
            }
            $noc++;
            if ($noc >= $length) {
                break;
            }
        }
        if ($noc > $length) {
            $n -= $tn;
        }
        $strcut = substr($string, 0, $n);
    } else {
        for ($i = 0; $i < $length; $i++) {
            $strcut .= ord($string[$i]) > 127 ? $string[$i] . $string[++$i] : $string[$i];
        }
    }

    return $strcut . $dot;
}

/**
 * 取得字符串的长度，包括中英文。
 */
function str_mstrlen($str, $charset = 'UTF-8') {
    if (function_exists('mb_substr')) {
        $length = mb_strlen($str, $charset);
    } elseif (function_exists('iconv_substr')) {
        $length = iconv_strlen($str, $charset);
    } else {
        preg_match_all("/[\x01-\x7f]|[\xc2-\xdf][\x80-\xbf]|\xe0[\xa0-\xbf][\x80-\xbf]|[\xe1-\xef][\x80-\xbf][\x80-\xbf]|\xf0[\x90-\xbf][\x80-\xbf][\x80-\xbf]|[\xf1-\xf7][\x80-\xbf][\x80-\xbf][\x80-\xbf]/", $text, $ar);
        $length = count($ar[0]);
    }
    return $length;
}

function str_RemoveSql($str) {
    $str = str_replace("and", "", $str);
    $str = str_replace("execute", "", $str);
    $str = str_replace("update", "", $str);
    $str = str_replace("count", "", $str);
    $str = str_replace("chr", "", $str);
    $str = str_replace("mid", "", $str);
    $str = str_replace("master", "", $str);
    $str = str_replace("truncate", "", $str);
    $str = str_replace("char", "", $str);
    $str = str_replace("declare", "", $str);
    $str = str_replace("select", "", $str);
    $str = str_replace("create", "", $str);
    $str = str_replace("delete", "", $str);
    $str = str_replace("insert", "", $str);
    $str = str_replace("'", "", $str);
    $str = str_replace("\"", "", $str);
    $str = str_replace(" ", "%20", $str);
    $str = str_replace("or", "", $str);
    $str = str_replace("=", "", $str);
    //echo $str;
    return $str;
}

function str_RemoveXSS($val) {
    // remove all non-printable characters. CR(0a) and LF(0b) and TAB(9) are allowed  
    // this prevents some character re-spacing such as <java\0script>  
    // note that you have to handle splits with \n, \r, and \t later since they *are* allowed in some inputs  
    $val = preg_replace('/([\x00-\x08,\x0b-\x0c,\x0e-\x19])/', '', $val);

    // straight replacements, the user should never need these since they're normal characters  
    // this prevents like <IMG SRC=@avascript:alert('XSS')>  
    $search = 'abcdefghijklmnopqrstuvwxyz';
    $search .= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $search .= '1234567890!@#$%^&*()';
    $search .= '~`";:?+/={}[]-_|\'\\';
    for ($i = 0; $i < strlen($search); $i++) {
        // ;? matches the ;, which is optional 
        // 0{0,7} matches any padded zeros, which are optional and go up to 8 chars 
        // @ @ search for the hex values 
        $val = preg_replace('/(&#[xX]0{0,8}' . dechex(ord($search[$i])) . ';?)/i', $search[$i], $val); // with a ; 
        // @ @ 0{0,7} matches '0' zero to seven times  
        $val = preg_replace('/(&#0{0,8}' . ord($search[$i]) . ';?)/', $search[$i], $val); // with a ; 
    }

    // now the only remaining whitespace attacks are \t, \n, and \r 
    $ra1 = Array('javascript', 'vbscript', 'expression', 'applet', 'meta', 'xml', 'blink', 'link', 'style', 'script', 'embed', 'object', 'iframe', 'frame', 'frameset', 'ilayer', 'layer', 'bgsound', 'title', 'base');
    $ra2 = Array('onabort', 'onactivate', 'onafterprint', 'onafterupdate', 'onbeforeactivate', 'onbeforecopy', 'onbeforecut', 'onbeforedeactivate', 'onbeforeeditfocus', 'onbeforepaste', 'onbeforeprint', 'onbeforeunload', 'onbeforeupdate', 'onblur', 'onbounce', 'oncellchange', 'onchange', 'onclick', 'oncontextmenu', 'oncontrolselect', 'oncopy', 'oncut', 'ondataavailable', 'ondatasetchanged', 'ondatasetcomplete', 'ondblclick', 'ondeactivate', 'ondrag', 'ondragend', 'ondragenter', 'ondragleave', 'ondragover', 'ondragstart', 'ondrop', 'onerror', 'onerrorupdate', 'onfilterchange', 'onfinish', 'onfocus', 'onfocusin', 'onfocusout', 'onhelp', 'onkeydown', 'onkeypress', 'onkeyup', 'onlayoutcomplete', 'onload', 'onlosecapture', 'onmousedown', 'onmouseenter', 'onmouseleave', 'onmousemove', 'onmouseout', 'onmouseover', 'onmouseup', 'onmousewheel', 'onmove', 'onmoveend', 'onmovestart', 'onpaste', 'onpropertychange', 'onreadystatechange', 'onreset', 'onresize', 'onresizeend', 'onresizestart', 'onrowenter', 'onrowexit', 'onrowsdelete', 'onrowsinserted', 'onscroll', 'onselect', 'onselectionchange', 'onselectstart', 'onstart', 'onstop', 'onsubmit', 'onunload');
    $ra = array_merge($ra1, $ra2);

    $found = true; // keep replacing as long as the previous round replaced something 
    while ($found == true) {
        $val_before = $val;
        for ($i = 0; $i < sizeof($ra); $i++) {
            $pattern = '/';
            for ($j = 0; $j < strlen($ra[$i]); $j++) {
                if ($j > 0) {
                    $pattern .= '(';
                    $pattern .= '(&#[xX]0{0,8}([9ab]);)';
                    $pattern .= '|';
                    $pattern .= '|(&#0{0,8}([9|10|13]);)';
                    $pattern .= ')*';
                }
                $pattern .= $ra[$i][$j];
            }
            $pattern .= '/i';
            $replacement = substr($ra[$i], 0, 2) . '><xss/><' . substr($ra[$i], 2); // add in <> to nerf the tag  
            $val = preg_replace($pattern, $replacement, $val); // filter out the hex tags  
            if ($val_before == $val) {
                // no replacements were made, so exit the loop  
                $found = false;
            }
        }
    }
    return $val;
}

function str_htmltag_tolower($string) {
    $pattern = "/<[^>]*>/i";
    return preg_replace_callback($pattern, create_function(
                    '$matches', 'return strtolower($matches[0]);'
            ), $string);
}

function str_htmltag_toupper($string) {
    $pattern = "/<[^>]*>/i";
    return preg_replace_callback($pattern, create_function(
                    '$matches', 'return strtoupper($matches[0]);'
            ), $string);
}
