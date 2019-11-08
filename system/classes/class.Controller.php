<?php

class Controller {

    public static $args; //url解析传参
    public static $tpl;

    /**
     * 设置URL全局参数变量
     * @param type $args
     * @return type
     */
    public function args($args) {
        if (isset($args)) {
            Controller::$args = $args;
        } else {
            return Controller::$args;
        }
    }

    public function getargs($key) {
        return $this->args[$key];
    }

    /**
     * 设置当前的tpl类型
     * @param type $tpl
     * @return type
     */
    public function tpl($tpl=null) {
        if (isset($tpl)) {
            Controller::$tpl = $tpl;
        } else {
            return Controller::$tpl;
        }
    }

    public function assign($variable, $value = NULL) {
        if (is_array($variable)) {
            $this->tpl(NULL)->assign($variable);
        } else {
            $this->tpl(NULL)->assign($variable, $value);
        }
    }

    public function display($tpl_name, $return_string = false) {
        return $this->tpl(NULL)->draw($tpl_name, $return_string);
    }

}
