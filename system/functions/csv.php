<?php

if (!function_exists('csv_read')) {

    /**
     * csv 文件读取
     * @param type $filepath
     * @return type
     */
    function csv_read($filepath) {
        $handle = fopen($filepath, "r");
        $out = array();
        $n = 0;
        while ($data = fgetcsv($handle, 10000)) {
            $num = count($data);
            for ($i = 0; $i < $num; $i++) {
                $data[$i] = iconv("gb2312", "UTF-8", $data[$i]);
                $out[$n][$i] = $data[$i];
            }
            $n++;
        }
        fclose($handle);
        return $out;
    }

}