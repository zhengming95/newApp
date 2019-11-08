<?php

function upload_img($config) {
    ob_start();
    require_cache(SYS . '/include/upload.class.php');
//    if (isset($config['filename'])) {
//        $P->upload_final_name = $config;
//    }
    if (isset($config['field'])) {
        $P = new upload($config['field']);
    } else {
        $P = new upload();
    }

    if (isset($config['filename'])) {
        $P->upload_final_name = $config['filename'];
    }
    $P->upload_file();
    $d = ob_get_contents();
    ob_end_clean();
    if (strlen($d) > 0) {
        return $d;
    }
    return STATICURL . $P->image_url;
}
