<?php

/**
 * 循环创建目录
 * @param type $dir
 * @param type $mode
 * @return boolean
 */
function dir_mk($dir, $mode = 0777) {
    if (is_dir($dir) || @mkdir($dir, $mode))
        return true;
    if (!dir_mk(dirname($dir), $mode))
        return false;
    return @mkdir($dir, $mode);
}

/**
 * 复制目录
 * @param type $srcdir
 * @param type $dstdir
 * @param type $verbose
 * @return type
 */

/**
 * 
 * @param type $srcdir
 * @param type $dstdir
 * @param type $cover 是否覆盖原来的文件
 * @param type $verbose
 * @return type
 */
function dir_copy($srcdir, $dstdir, $cover = true, $verbose = false) {
    $num = 0;
    if (!is_dir($dstdir))
        mkdir($dstdir);
    if ($curdir = opendir($srcdir)) {
        while ($file = readdir($curdir)) {
            if ($file != '.svn')
                if ($file != '.' && $file != '..') {
                    $srcfile = $srcdir . '\\' . $file;
                    $dstfile = $dstdir . '\\' . $file;
                    if (is_file($srcfile)) {
                        if (is_file($dstfile))
                            $ow = filemtime($srcfile) - filemtime($dstfile);
                        else
                            $ow = 1;
                        if ($ow > 0) {
                            if ($verbose)
                                echo "Copying '$srcfile' to '$dstfile'...";
                            $_copy = FALSE;
                            if ($cover) {
                                $_copy = TRUE;
                            } else {
                                if (!file_exists($dstfile)) {
                                    $_copy = TRUE;
                                }
                            }

                            if ($_copy) {
                                if (copy($srcfile, $dstfile)) {
                                    touch($dstfile, filemtime($srcfile));
                                    $num++;
                                    if ($verbose)
                                        echo "OK\n";
                                } else
                                    echo "Error: File '$srcfile' could not be copied!\n";
                            }
                        }
                    } else if (is_dir($srcfile)) {
                        $num += dir_copy($srcfile, $dstfile, $verbose);
                    }
                }
        }
        closedir($curdir);
    }
    return $num;
}
/**
 * 删除目录
 * @param type $dir
 * @return boolean
 */
function dir_del($dir) {
    //先删除目录下的文件：
    $dh = opendir($dir);
    while ($file = readdir($dh)) {           
        if ($file != "." && $file != "..") {
            $fullpath = $dir . "/" . $file;
            if (!is_dir($fullpath)) {
                unlink($fullpath);
            } else {
                dir_del($fullpath);
            }
        }
    }
    closedir($dh);
    //删除当前文件夹：
    if (rmdir($dir)) {
        return true;
    } else {
        return false;
    }
}
