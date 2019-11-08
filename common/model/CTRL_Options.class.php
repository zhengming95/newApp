<?php
!defined('APPPATH') && exit();
/**
 * Description of use table options 配置设置参数 *
 * @author autoCreate
 */

require_cache (AUTOMODEL . '/model/DB_Options.model.php');

if (!class_exists('CTRL_Options')):

    /**
     *  配置设置参数     
     */
    class CTRL_Options extends Model {

        public function __construct() {
            $this->tableName = PREFIX . 'options';
            $this->db_model = new DB_Options();
        }


        public function set($data){ 
            
            $this->setOptionId($this->check($data['OptionId'],'bigint(20)','','NO')); 
            
            $this->setOptionKey($this->check($data['OptionKey'],'varchar(100)','','YES')); 
            
            $this->setOptionValue($this->check($data['OptionValue'],'longblob','','YES')); 
            
            $this->setAutoload($this->check($data['Autoload'],'char(10)','','YES')); 
            
            $this->setMemberId($this->check($data['MemberId'],'bigint(20)','0','YES')); 
            
            $this->setSiteId($this->check($data['SiteId'],'bigint(20)','0','YES')); 
            
            $this->setOptionMemo($this->check($data['OptionMemo'],'varchar(100)','','YES')); 
            
        }

        public function help() {
            $data = '';
            $f = AUTOMODEL . '/docs/_Options.php';
            if (is_file($f)) {
                ob_start();
                require $f;
                $data = ob_get_contents();
                ob_end_clean();
            } 
            return $data;
        }


    
    
        /**
         *设置的标识
         *@param type $value
         */
        public function setOptionId($value) {
            return $this->db_model->setOptionId($value);
        }

        /**
         *设置的标识
         *@return type
         */
        public function getOptionId() {
            return $this->db_model->getOptionId();
        }

        public function _OptionIdField() {
            return 'option_id';
        }
       
    
        /**
         *key
         *@param type $value
         */
        public function setOptionKey($value) {
            return $this->db_model->setOptionKey($value);
        }

        /**
         *key
         *@return type
         */
        public function getOptionKey() {
            return $this->db_model->getOptionKey();
        }

        public function _OptionKeyField() {
            return 'option_key';
        }
       
    
        /**
         *t
         *@param type $value
         */
        public function setOptionValue($value) {
            return $this->db_model->setOptionValue($value);
        }

        /**
         *t
         *@return type
         */
        public function getOptionValue() {
            return $this->db_model->getOptionValue();
        }

        public function _OptionValueField() {
            return 'option_value';
        }
       
    
        /**
         *是否自动加载
         *@param type $value
         */
        public function setAutoload($value) {
            return $this->db_model->setAutoload($value);
        }

        /**
         *是否自动加载
         *@return type
         */
        public function getAutoload() {
            return $this->db_model->getAutoload();
        }

        public function _AutoloadField() {
            return 'autoload';
        }
       
    
        /**
         *用户的编号
         *@param type $value
         */
        public function setMemberId($value) {
            return $this->db_model->setMemberId($value);
        }

        /**
         *用户的编号
         *@return type
         */
        public function getMemberId() {
            return $this->db_model->getMemberId();
        }

        public function _MemberIdField() {
            return 'member_id';
        }
       
    
        /**
         *站点信息
         *@param type $value
         */
        public function setSiteId($value) {
            return $this->db_model->setSiteId($value);
        }

        /**
         *站点信息
         *@return type
         */
        public function getSiteId() {
            return $this->db_model->getSiteId();
        }

        public function _SiteIdField() {
            return 'site_id';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setOptionMemo($value) {
            return $this->db_model->setOptionMemo($value);
        }

        /**
         *
         *@return type
         */
        public function getOptionMemo() {
            return $this->db_model->getOptionMemo();
        }

        public function _OptionMemoField() {
            return 'option_memo';
        }
       
    
    }

endif;
