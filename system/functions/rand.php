<?php

/**
 * 规则
 */
function rand_create($rand = '') {
    return date("Ymdhis") . mt_rand(1000, 9999) . $rand;
}
