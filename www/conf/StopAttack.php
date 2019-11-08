<?php

!defined('APPPATH') && exit();
$getfilter = "'|(and|or)\\b.+?(>|<|=|in|like)|\\/\\*.+?\\*\\/|<\\s*script\\b|\\bEXEC\\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)";
$postfilter = "\\b(and|or)\\b.{1,6}?(=|>|<|\\bin\\b|\\blike\\b)|\\/\\*.+?\\*\\/|<\\s*script\\b|\\bEXEC\\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)";
$cookiefilter = "\\b(and|or)\\b.{1,6}?(=|>|<|\\bin\\b|\\blike\\b)|\\/\\*.+?\\*\\/|<\\s*script\\b|\\bEXEC\\b|UNION.+?SELECT|UPDATE.+?SET|INSERT\\s+INTO.+?VALUES|(SELECT|DELETE).+?FROM|(CREATE|ALTER|DROP|TRUNCATE)\\s+(TABLE|DATABASE)";

function StopAttack($StrFiltKey, $StrFiltValue, $ArrFiltReq) {
    if (is_array($StrFiltValue)) {
        $StrFiltValue = implode($StrFiltValue);
    }
    if (preg_match("/" . $ArrFiltReq . "/is", $StrFiltValue) == 1) {
        @header("Content-type: text/html; charset=utf-8");
        write_log_file("<br><br>操作IP: " . $_SERVER["REMOTE_ADDR"] . "<br>操作时间: " . strftime("%Y-%m-%d %H:%M:%S") . "<br>操作页面:" . $_SERVER["PHP_SELF"] . "<br>提交方式: " . $_SERVER["REQUEST_METHOD"] . "<br>提交参数: " . $StrFiltKey . "<br>提交数据: " . $StrFiltValue);
        print "提交内容包含非法字符!";
        exit();
    }
}

// 
//$ArrPGC=array_merge($_GET,$_POST,$_COOKIE);

foreach ($_GET as $key => $value) {
    if (!is_array($value)) {
        $value = str_encode($value);
        $_GET[$key] = $value;
        StopAttack($key, $value, $getfilter);
    } else {
        foreach ($value as $key1 => $value1) {
            if (!is_array($value1)) {
                $value1 = str_encode($value1);
                $_GET[$key][$key1] = $value1;
                StopAttack($key1, $value1, $getfilter);
            } else {
                foreach ($value1 as $key2 => $value2) {
                    if (!is_array($value2)) {
                        $value = str_encode($value2);
                        $_GET[$key][$key1][$key2] = $value2;
                        StopAttack($key2, $value2, $getfilter);
                    } else {
                        foreach ($value2 as $key3 => $value3) {
                            if (!is_array($value3)) {
                                $value3 = str_encode($value3);
                                $_GET[$key][$key1][$key2][$key3] = $value3;
                                StopAttack($key3, $value3, $getfilter);
                            } else {
                                foreach ($value3 as $key4 => $value4) {
                                    if (!is_array($value4)) {
                                        $value4 = str_encode($value4);
                                        $_GET[$key][$key1][$key2][$key3][$key4] = $value4;
                                        StopAttack($key4, $value4, $getfilter);
                                    } else {
                                        foreach ($value4 as $key5 => $value5) {
                                            if (!is_array($value5)) {
                                                $value5 = str_encode($value5);
                                                $_GET[$key][$key1][$key2][$key3][$key4][$key5] = $value5;
                                                StopAttack($key5, $value5, $getfilter);
                                            } else {
                                                foreach ($value5 as $key6 => $value6) {
                                                    $value6 = str_encode($value6);
                                                    $_GET[$key][$key1][$key2][$key3][$key4][$key5][$key6] = $value6;
                                                    StopAttack($key6, $value6, $getfilter);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

foreach ($_POST as $key => $value) {
    if (!is_array($value)) {
        $value = str_encode($value);
        $_POST[$key] = $value;
//        StopAttack($key, $value, $postfilter);
    } else {
        foreach ($value as $key1 => $value1) {
            if (!is_array($value1)) {
                $value1 = str_encode($value1);
                $_POST[$key][$key1] = $value1;
                StopAttack($key1, $value1, $postfilter);
            } else {
                foreach ($value1 as $key2 => $value2) {
                    if (!is_array($value2)) {
                        $value = str_encode($value2);
                        $_POST[$key][$key1][$key2] = $value2;
                        StopAttack($key2, $value2, $postfilter);
                    } else {
                        foreach ($value2 as $key3 => $value3) {
                            if (!is_array($value3)) {
                                $value3 = str_encode($value3);
                                $_POST[$key][$key1][$key2][$key3] = $value3;
                                StopAttack($key3, $value3, $postfilter);
                            } else {
                                foreach ($value3 as $key4 => $value4) {
                                    if (!is_array($value4)) {
                                        $value4 = str_encode($value4);
                                        $_POST[$key][$key1][$key2][$key3][$key4] = $value4;
                                        StopAttack($key4, $value4, $postfilter);
                                    } else {
                                        foreach ($value4 as $key5 => $value5) {
                                            if (!is_array($value5)) {
                                                $value5 = str_encode($value5);
                                                $_POST[$key][$key1][$key2][$key3][$key4][$key5] = $value5;
                                                StopAttack($key5, $value5, $postfilter);
                                            } else {
                                                foreach ($value5 as $key6 => $value6) {
                                                    $value6 = str_encode($value6);
                                                    $_POST[$key][$key1][$key2][$key3][$key4][$key5][$key6] = $value6;
                                                    StopAttack($key6, $value6, $postfilter);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


foreach ($_COOKIE as $key => $value) {
    if (!is_array($value)) {
        $value = str_encode($value);
        $_COOKIE[$key] = $value;
        StopAttack($key, $value, $cookiefilter);
    } else {
        foreach ($value as $key1 => $value1) {
            if (!is_array($value1)) {
                $value1 = str_encode($value1);
                $_COOKIE[$key][$key1] = $value1;
                StopAttack($key1, $value1, $cookiefilter);
            } else {
                foreach ($value1 as $key2 => $value2) {
                    if (!is_array($value2)) {
                        $value = str_encode($value2);
                        $_COOKIE[$key][$key1][$key2] = $value2;
                        StopAttack($key2, $value2, $cookiefilter);
                    } else {
                        foreach ($value2 as $key3 => $value3) {
                            if (!is_array($value3)) {
                                $value3 = str_encode($value3);
                                $_COOKIE[$key][$key1][$key2][$key3] = $value3;
                                StopAttack($key3, $value3, $cookiefilter);
                            } else {
                                foreach ($value3 as $key4 => $value4) {
                                    if (!is_array($value4)) {
                                        $value4 = str_encode($value4);
                                        $_COOKIE[$key][$key1][$key2][$key3][$key4] = $value4;
                                        StopAttack($key4, $value4, $cookiefilter);
                                    } else {
                                        foreach ($value4 as $key5 => $value5) {
                                            if (!is_array($value5)) {
                                                $value5 = str_encode($value5);
                                                $_COOKIE[$key][$key1][$key2][$key3][$key4][$key5] = $value5;
                                                StopAttack($key5, $value5, $cookiefilter);
                                            } else {
                                                foreach ($value5 as $key6 => $value6) {
                                                    $value6 = str_encode($value6);
                                                    $_COOKIE[$key][$key1][$key2][$key3][$key4][$key5][$key6] = $value6;
                                                    StopAttack($key6, $value6, $cookiefilter);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}


global $args;
header("Content-type: text/html; charset=utf-8");
if(is_array($args))
foreach ($args as $key => $value) {
    // $value = (str_RemoveSql(htmlentities($value)));
    $args[$key] = $value;
    StopAttack($key, $value, $cookiefilter);
}


