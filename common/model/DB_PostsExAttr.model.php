<?php
/**
 * Description of use table posts_ex_attr 内容的附加字段 *
 * @author autoCreate
 */
if (!class_exists('DB_PostsExAttr')):

    /**
     * 内容的附加字段     */
    class DB_PostsExAttr extends DB_Model {
    					 
        public $id = NULL; // 
            
        public $_key = 'id'; //主键
                					 
        public $post_id = 0; // 
                					 
        public $post_ex_attr_key = NULL; // 
                					 
        public $post_ex_attr_value = NULL; // 
                					 
        public $ex_attr_parent = 0; // 
                					 
        public $ex_attr_time = NULL; //建立时间 
                					 
        public $ex_attr_key1 = NULL; // 
                					 
        public $ex_attr_key2 = NULL; // 
                					 
        public $ex_attr_key3 = NULL; // 
                					 
        public $ex_attr_key4 = NULL; // 
                					 
        public $ex_attr_key5 = NULL; // 
                     
    
    
        /**
         *
         *@param type $value
         */
        public function setId($value) {
            return $this->id = $value;
        }

        /**
         *
         *@return type
         */
        public function getId() {
            return $this->id;
        }

        public function _IdField() {
            return 'id';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostId($value) {
            return $this->post_id = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostId() {
            return $this->post_id;
        }

        public function _PostIdField() {
            return 'post_id';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostExAttrKey($value) {
            return $this->post_ex_attr_key = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostExAttrKey() {
            return $this->post_ex_attr_key;
        }

        public function _PostExAttrKeyField() {
            return 'post_ex_attr_key';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostExAttrValue($value) {
            return $this->post_ex_attr_value = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostExAttrValue() {
            return $this->post_ex_attr_value;
        }

        public function _PostExAttrValueField() {
            return 'post_ex_attr_value';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrParent($value) {
            return $this->ex_attr_parent = $value;
        }

        /**
         *
         *@return type
         */
        public function getExAttrParent() {
            return $this->ex_attr_parent;
        }

        public function _ExAttrParentField() {
            return 'ex_attr_parent';
        }
       
    
        /**
         *建立时间
         *@param type $value
         */
        public function setExAttrTime($value) {
            return $this->ex_attr_time = $value;
        }

        /**
         *建立时间
         *@return type
         */
        public function getExAttrTime() {
            return $this->ex_attr_time;
        }

        public function _ExAttrTimeField() {
            return 'ex_attr_time';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrKey1($value) {
            return $this->ex_attr_key1 = $value;
        }

        /**
         *
         *@return type
         */
        public function getExAttrKey1() {
            return $this->ex_attr_key1;
        }

        public function _ExAttrKey1Field() {
            return 'ex_attr_key1';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrKey2($value) {
            return $this->ex_attr_key2 = $value;
        }

        /**
         *
         *@return type
         */
        public function getExAttrKey2() {
            return $this->ex_attr_key2;
        }

        public function _ExAttrKey2Field() {
            return 'ex_attr_key2';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrKey3($value) {
            return $this->ex_attr_key3 = $value;
        }

        /**
         *
         *@return type
         */
        public function getExAttrKey3() {
            return $this->ex_attr_key3;
        }

        public function _ExAttrKey3Field() {
            return 'ex_attr_key3';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrKey4($value) {
            return $this->ex_attr_key4 = $value;
        }

        /**
         *
         *@return type
         */
        public function getExAttrKey4() {
            return $this->ex_attr_key4;
        }

        public function _ExAttrKey4Field() {
            return 'ex_attr_key4';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrKey5($value) {
            return $this->ex_attr_key5 = $value;
        }

        /**
         *
         *@return type
         */
        public function getExAttrKey5() {
            return $this->ex_attr_key5;
        }

        public function _ExAttrKey5Field() {
            return 'ex_attr_key5';
        }
       
    
    }

endif;
