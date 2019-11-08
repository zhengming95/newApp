<?php
/**
 * Description of use table terms 类别 组别管理 *
 * @author autoCreate
 */
if (!class_exists('DB_Terms')):

    /**
     * 类别 组别管理     */
    class DB_Terms extends DB_Model {
    					 
        public $term_id = NULL; //分类id 
            
        public $_key = 'term_id'; //主键
                					 
        public $term_type = NULL; //分类类型 
                					 
        public $term_alias = NULL; //分类别名 
                					 
        public $term_name = NULL; //分类名称 
                					 
        public $term_parent_id = 0; //上一级分类 
                					 
        public $term_description = NULL; //分类描述 
                					 
        public $site_id = 0; //所属的站点 
                					 
        public $term_status = 1; //当前状态 
                					 
        public $term_count = 0; //分类引用数量 
                					 
        public $term_order = 0; // 
                					 
        public $term_ex_attr = NULL; // 
                					 
        public $term_key1 = NULL; // 
                					 
        public $term_key2 = NULL; // 
                					 
        public $term_key3 = NULL; // 
                					 
        public $term_key4 = NULL; // 
                					 
        public $term_key5 = NULL; // 
                					 
        public $term_key6 = NULL; // 
                					 
        public $term_key7 = NULL; // 
                					 
        public $term_key8 = NULL; // 
                					 
        public $term_key9 = NULL; // 
                					 
        public $term_key10 = NULL; // 
                     
    
    
        /**
         *分类id
         *@param type $value
         */
        public function setTermId($value) {
            return $this->term_id = $value;
        }

        /**
         *分类id
         *@return type
         */
        public function getTermId() {
            return $this->term_id;
        }

        public function _TermIdField() {
            return 'term_id';
        }
       
    
        /**
         *分类类型
         *@param type $value
         */
        public function setTermType($value) {
            return $this->term_type = $value;
        }

        /**
         *分类类型
         *@return type
         */
        public function getTermType() {
            return $this->term_type;
        }

        public function _TermTypeField() {
            return 'term_type';
        }
       
    
        /**
         *分类别名
         *@param type $value
         */
        public function setTermAlias($value) {
            return $this->term_alias = $value;
        }

        /**
         *分类别名
         *@return type
         */
        public function getTermAlias() {
            return $this->term_alias;
        }

        public function _TermAliasField() {
            return 'term_alias';
        }
       
    
        /**
         *分类名称
         *@param type $value
         */
        public function setTermName($value) {
            return $this->term_name = $value;
        }

        /**
         *分类名称
         *@return type
         */
        public function getTermName() {
            return $this->term_name;
        }

        public function _TermNameField() {
            return 'term_name';
        }
       
    
        /**
         *上一级分类
         *@param type $value
         */
        public function setTermParentId($value) {
            return $this->term_parent_id = $value;
        }

        /**
         *上一级分类
         *@return type
         */
        public function getTermParentId() {
            return $this->term_parent_id;
        }

        public function _TermParentIdField() {
            return 'term_parent_id';
        }
       
    
        /**
         *分类描述
         *@param type $value
         */
        public function setTermDescription($value) {
            return $this->term_description = $value;
        }

        /**
         *分类描述
         *@return type
         */
        public function getTermDescription() {
            return $this->term_description;
        }

        public function _TermDescriptionField() {
            return 'term_description';
        }
       
    
        /**
         *所属的站点
         *@param type $value
         */
        public function setSiteId($value) {
            return $this->site_id = $value;
        }

        /**
         *所属的站点
         *@return type
         */
        public function getSiteId() {
            return $this->site_id;
        }

        public function _SiteIdField() {
            return 'site_id';
        }
       
    
        /**
         *当前状态
         *@param type $value
         */
        public function setTermStatus($value) {
            return $this->term_status = $value;
        }

        /**
         *当前状态
         *@return type
         */
        public function getTermStatus() {
            return $this->term_status;
        }

        public function _TermStatusField() {
            return 'term_status';
        }
       
    
        /**
         *分类引用数量
         *@param type $value
         */
        public function setTermCount($value) {
            return $this->term_count = $value;
        }

        /**
         *分类引用数量
         *@return type
         */
        public function getTermCount() {
            return $this->term_count;
        }

        public function _TermCountField() {
            return 'term_count';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermOrder($value) {
            return $this->term_order = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermOrder() {
            return $this->term_order;
        }

        public function _TermOrderField() {
            return 'term_order';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermExAttr($value) {
            return $this->term_ex_attr = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermExAttr() {
            return $this->term_ex_attr;
        }

        public function _TermExAttrField() {
            return 'term_ex_attr';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey1($value) {
            return $this->term_key1 = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermKey1() {
            return $this->term_key1;
        }

        public function _TermKey1Field() {
            return 'term_key1';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey2($value) {
            return $this->term_key2 = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermKey2() {
            return $this->term_key2;
        }

        public function _TermKey2Field() {
            return 'term_key2';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey3($value) {
            return $this->term_key3 = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermKey3() {
            return $this->term_key3;
        }

        public function _TermKey3Field() {
            return 'term_key3';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey4($value) {
            return $this->term_key4 = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermKey4() {
            return $this->term_key4;
        }

        public function _TermKey4Field() {
            return 'term_key4';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey5($value) {
            return $this->term_key5 = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermKey5() {
            return $this->term_key5;
        }

        public function _TermKey5Field() {
            return 'term_key5';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey6($value) {
            return $this->term_key6 = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermKey6() {
            return $this->term_key6;
        }

        public function _TermKey6Field() {
            return 'term_key6';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey7($value) {
            return $this->term_key7 = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermKey7() {
            return $this->term_key7;
        }

        public function _TermKey7Field() {
            return 'term_key7';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey8($value) {
            return $this->term_key8 = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermKey8() {
            return $this->term_key8;
        }

        public function _TermKey8Field() {
            return 'term_key8';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey9($value) {
            return $this->term_key9 = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermKey9() {
            return $this->term_key9;
        }

        public function _TermKey9Field() {
            return 'term_key9';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey10($value) {
            return $this->term_key10 = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermKey10() {
            return $this->term_key10;
        }

        public function _TermKey10Field() {
            return 'term_key10';
        }
       
    
    }

endif;
