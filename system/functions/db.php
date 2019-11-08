<?php

function db_now() {
    return date('Y-m-d H:i:s');
}

function db_default($dbtype, $default, $isnull) {
    $t = strtolower($dbtype);
//    $default = strtolower($default);
//    $isnull = strtolower($isnull);
    if ($default == NULL) {
        if (strpos( $t,'time') === false) {
//            echo "NULL";
        } else {
//            echo 'db_now()';
        }  
         echo "NULL";
    } else {
        echo ($default);
    }
}
