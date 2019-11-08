<?php

/**
 * 把日志写到文件
 * @param type $msg 
 */
function write_log_file($msg) {

    if (!is_dir(LOGPATH . '/' . date('Y-m-d'))) {
        @ mkdir(LOGPATH . '/' . date('Y-m-d'), 0777, true);
    }
    $f = LOGPATH . '/' . date('Y-m-d') . '/' . date('H') . '.php';
    if (!is_file($f)) {
        file_put_contents($f, '<?php die;?>' . "\n");
    }
    $msg = date('i:s') . '--' . $msg . "\n";
    file_put_contents($f, $msg, FILE_APPEND);
}

/**
 * 把日志写到文件
 * @param type $msg 
 */
function write_dblog_file($msg) {

    if (!is_dir(LOGPATH . '/db/' . date('Y-m-d'))) {
        @ mkdir(LOGPATH . '/db/' . date('Y-m-d'), 0777, true);
    }
    $f = LOGPATH . '/db/' . date('Y-m-d') . '/' . date('H') . '.php';
    if (!is_file($f)) {
        file_put_contents($f, '<?php die;?>' . "\n");
    }
    $msg = date('i:s') . '--' . $msg . "\n";
    file_put_contents($f, $msg, FILE_APPEND);
}

/**
 * 对于文件的操作
 */
function M($name) {
    if (!class_exists($name)) {
        $_file = AUTOMODEL . '/model/' . $name . '.class.php';
        if (is_file($_file)) {
            require_once $_file;
            return new $name();
        } else {
            return new Model();
        }
    } else {
        return new $name();
    }
}

// 优化的require_once
function require_cache($filename) {
    static $_importFiles = array();
    if (!isset($_importFiles[$filename])) {
        if (file_exists($filename)) {
            require $filename;
            $_importFiles[$filename] = true;
        } else {
            $_importFiles[$filename] = false;
        }
    }
    return $_importFiles[$filename];
}

/**
 * 加载控制器
 * @param type $realpath
 * @param type $args 
 */
function load_controller_file($realpath, $args, $flag = 'app') {
    if ($flag == 'app') {
        $realpath2 = APPPATH . '/controller/' . $realpath . '.php';
        !isset($args[1]) && $args[1] = 'index';
        $method = $args[1];
    } else if ($flag == 'service') {
        $realpath2 = AUTOMODEL . '/service/' . $realpath . '.php';
        !isset($args[3]) && $args[3] = 'index';
        $method = $args[3];
    }
    if (!is_file($realpath2)) {
        return FALSE;
    } else {
        require $realpath2; // 加载控制器

        $class = ucfirst($realpath);
        $function = 'c_' . $realpath . '_' . $method;
        if (function_exists($function)) {   //函数式执行
            $function($args); //调用方法
        }
        if (class_exists($class)) {
            if (method_exists($class, $method) == TRUE) {   //类方式执行
                $C = new $class();
                $C->$method($args);
            } else {
                $method = '_' . $method;
                if (method_exists($class, $method) == TRUE) {   //类方式执行
                    $C = new $class();
                    $C->$method($args);
                }
            }
        }
        return TRUE;
    }
}

/*
  load classs
  判断类是否已经存在
  如果不存在就加载 如果已经存在就不要在加载了
  直接在外面调用这个类信息
 */

function load_class($className, $type) {
    $type = $type ? $type : 'core';
    if ($type == 'core') {
        $className = '' . $className;
        if (!class_exists($className)) {
            $f = SYS . '/include/' . $className . '.class.php';
            if (file_exists($f)) {
                require $f;
//                return new $className();
            } else {
                exit($className . '类不存在');
            }
        } else {
//            return new $className();
        }
    } else if ($type == 'comm') { //
        $className = $className;
        if (!class_exists($className)) {
            $f = AUTOMODEL . '/lib/' . $className . '.class.php';
            if (file_exists($f)) {
//                return new $className();
            } else {
                exit($className . '类不存在');
            }
        } else {
//            return new $className();
        }
    } else if ($type == 'app') {
        $className = $className;
        if (!class_exists($className)) {
            $f = APPPATH . '/lib/' . $className . '.class.php';
            if (file_exists($f)) {
                require $f;
//                return new $className();
            } else {
                exit($className . '类不存在');
            }
        } else {
//            return new $className();
        }
    }
}

/**
 * 得到文件的后缀名
 * @param type $file_name
 * @return type
 */
function file_extension($file_name) {
    $extend = explode('.', $file_name);
    $va = count($extend) - 1;
    return $extend[$va];
}

function file_tempnam_sfx($path, $suffix) 
{
    do 
    { 
        $file = $path."/".mt_rand().$suffix; 
        $fp = @fopen($file, 'x'); 
    }while(!$fp);
    fclose($fp); 
    return $file; 
} 






/* 
*   递归获取指定路径下的所有文件或匹配指定正则的文件（不包括“.”和“..”），结果以数组形式返回 
*   @param  string  $dir 
*   @param  string  $pattern 
*   @return array 
*/  
function file_list($dir,$pattern="")  
{  
    static $arr=array();  
    $dir_handle=opendir($dir);  
    if($dir_handle)  
    {  
        // 这里必须严格比较，因为返回的文件名可能是“0”  
        while(($file=readdir($dir_handle))!==false)  
        {  
            if($file==='.' || $file==='..')  
            {  
                continue;  
            }  
            $tmp=realpath($dir.'/'.$file);  
            if(is_dir($tmp))  
            {  
                $retArr=file_list($tmp,$pattern);  
                if(!empty($retArr))  
                {  
                    // $arr[]=$retArr;  
                }  
            }  
            else  
            {  
                if($pattern==="" || preg_match($pattern,$tmp))  
                {  
                    $arr[]=$tmp;  
                }  
            }  
        }  
        closedir($dir_handle);  
    }  
    return $arr;  
}  
// $fd = file_list($_SERVER['DOCUMENT_ROOT'].'/');

// foreach($fd as $key => $value){
	// $fd[$key]= str_replace('G:\uvpower-dev\www','',$value);
	
	 // file_put_contents ('../eee.php', php_strip_whitespace($value) ,FILE_APPEND  );

// }


// 列出网站根目录下所有以".php"扩展名（不区分大小写）结尾的文件  
// echo '<pre>';  
// print_r(file_list($_SERVER['DOCUMENT_ROOT'].'','/\.php$/i'));  
// print_r(file_list($_SERVER['DOCUMENT_ROOT'].'/themes'));  
// print_r($fd);  
// echo '</pre>';  
// exit;