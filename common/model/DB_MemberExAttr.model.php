<?php
/**
 * Description of use table member_ex_attr 用户内容的附加字段 *
 * @author autoCreate
 */
if (!class_exists('DB_MemberExAttr')):

    /**
     * 用户内容的附加字段     */
    class DB_MemberExAttr extends DB_Model {
    					 
        public $id = NULL; // 
            
        public $_key = 'id'; //主键
                					 
        public $member_id = 0; // 
                					 
        public $member_ex_attr_key = NULL; // 
                					 
        public $member_ex_attr_value = NULL; // 
                					 
        public $ex_attr_parent = 0; // 
                     
    
    
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
        public function setMemberId($value) {
            return $this->member_id = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberId() {
            return $this->member_id;
        }

        public function _MemberIdField() {
            return 'member_id';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberExAttrKey($value) {
            return $this->member_ex_attr_key = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberExAttrKey() {
            return $this->member_ex_attr_key;
        }

        public function _MemberExAttrKeyField() {
            return 'member_ex_attr_key';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberExAttrValue($value) {
            return $this->member_ex_attr_value = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberExAttrValue() {
            return $this->member_ex_attr_value;
        }

        public function _MemberExAttrValueField() {
            return 'member_ex_attr_value';
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
       
    
    }

endif;
