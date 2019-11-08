<?php

!defined('APPPATH') && exit();

class Upload extends Controller {

    public function index($args) {
        $p = "/upload/" . date("Y") . '/' . date("m") . '/' . date("d") . '/' . date("H") . '/';
        @dir_mk(BASEPATH . $p, $mode = 0777);
        $fn = date("i") . "_" . time() . rand();
        $fex = file_extension($_FILES['Filedata']['name']);
        $allow_uploadedfile_type = array('gif','bmp', 'jpg', 'png', 'zip', 'rar', 'doc');

        if (in_array($fex, $allow_uploadedfile_type)) {
            $filename = BASEPATH . $p . $fn . '.' . $fex;
            $fileurl = $p . $fn . '.' . $fex;
            if (!move_uploaded_file($_FILES['Filedata']['tmp_name'], $filename)) {
                
            } else {
                // echo 'http://'.$_SERVER['HTTP_HOST'].$fileurl;
                echo $fileurl;
            }
        } else {
            echo 'xpjc001'; //文件类型不正确
        }
    }

}
