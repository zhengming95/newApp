<?php

!defined('APPPATH') && exit();

interface ITerms {

    /**
     * 得到下一级元素节点
     */
    public function children($args);
}

class terms extends Controller implements ITerms {

    public function children($args) {
        $type = $_GET['type'];
        if ($type == 'select') {
            echo terms_draw($_GET['term_parent_id'], 0, '');
        }
    }

}
