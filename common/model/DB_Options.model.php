<?php
/**
 * Description of use table options 配置设置参数 *
 * @author autoCreate
 */
if (!class_exists('DB_Options')):

    /**
     * 配置设置参数     */
    class DB_Options extends DB_Model {
    					 
        public $option_id = NULL; //设置的标识 
            
        public $_key = 'option_id'; //主键
                					 
        public $option_key = NULL; //key 
                					 
        public $option_value = NULL; //t 
                					 
        public $autoload = NULL; //是否自动加载 
                					 
        public $member_id = 0; //用户的编号 
                					 
        public $site_id = 0; //站点信息 
                					 
        public $option_memo = NULL; // 
                     
    
    
        /**
         *设置的标识
         *@param type $value
         */
        public function setOptionId($value) {
            return $this->option_id = $value;
        }

        /**
         *设置的标识
         *@return type
         */
        public function getOptionId() {
            return $this->option_id;
        }

        public function _OptionIdField() {
            return 'option_id';
        }
       
    
        /**
         *key
         *@param type $value
         */
        public function setOptionKey($value) {
            return $this->option_key = $value;
        }

        /**
         *key
         *@return type
         */
        public function getOptionKey() {
            return $this->option_key;
        }

        public function _OptionKeyField() {
            return 'option_key';
        }
       
    
        /**
         *t
         *@param type $value
         */
        public function setOptionValue($value) {
            return $this->option_value = $value;
        }

        /**
         *t
         *@return type
         */
        public function getOptionValue() {
            return $this->option_value;
        }

        public function _OptionValueField() {
            return 'option_value';
        }
       
    
        /**
         *是否自动加载
         *@param type $value
         */
        public function setAutoload($value) {
            return $this->autoload = $value;
        }

        /**
         *是否自动加载
         *@return type
         */
        public function getAutoload() {
            return $this->autoload;
        }

        public function _AutoloadField() {
            return 'autoload';
        }
       
    
        /**
         *用户的编号
         *@param type $value
         */
        public function setMemberId($value) {
            return $this->member_id = $value;
        }

        /**
         *用户的编号
         *@return type
         */
        public function getMemberId() {
            return $this->member_id;
        }

        public function _MemberIdField() {
            return 'member_id';
        }
       
    
        /**
         *站点信息
         *@param type $value
         */
        public function setSiteId($value) {
            return $this->site_id = $value;
        }

        /**
         *站点信息
         *@return type
         */
        public function getSiteId() {
            return $this->site_id;
        }

        public function _SiteIdField() {
            return 'site_id';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setOptionMemo($value) {
            return $this->option_memo = $value;
        }

        /**
         *
         *@return type
         */
        public function getOptionMemo() {
            return $this->option_memo;
        }

        public function _OptionMemoField() {
            return 'option_memo';
        }
       
    
    }

endif;
