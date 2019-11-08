<?php

!defined('APPPATH') && exit();

function downFile($sFilePath) {
    if (file_exists($sFilePath)) {
        $aFilePath = explode("/", str_replace("", "/", $sFilePath), $sFilePath);
        $sFileName = $aFilePath[count($aFilePath) - 1];
        $nFileSize = filesize($sFilePath);
        header("Content-Disposition: attachment; filename=" . $_REQUEST['filename'] . ".docx");
        header("Content-Length: " . $nFileSize);
        header("Content-type: application/octet-stream");
        mb_convert_encoding(readfile($sFilePath), "utf-8", "GB2312");
    } else {
        echo("文件不存在!");
    }
}
