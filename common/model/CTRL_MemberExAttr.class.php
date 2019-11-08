<?php
!defined('APPPATH') && exit();
/**
 * Description of use table member_ex_attr 用户内容的附加字段 *
 * @author autoCreate
 */

require_cache (AUTOMODEL . '/model/DB_MemberExAttr.model.php');

if (!class_exists('CTRL_MemberExAttr')):

    /**
     *  用户内容的附加字段     
     */
    class CTRL_MemberExAttr extends Model {

        public function __construct() {
            $this->tableName = PREFIX . 'member_ex_attr';
            $this->db_model = new DB_MemberExAttr();
        }


        public function set($data){ 
            
            $this->setId($this->check($data['Id'],'bigint(20)','','NO')); 
            
            $this->setMemberId($this->check($data['MemberId'],'bigint(20)','0','YES')); 
            
            $this->setMemberExAttrKey($this->check($data['MemberExAttrKey'],'char(30)','','YES')); 
            
            $this->setMemberExAttrValue($this->check($data['MemberExAttrValue'],'longblob','','YES')); 
            
            $this->setExAttrParent($this->check($data['ExAttrParent'],'bigint(20)','0','YES')); 
            
        }

        public function help() {
            $data = '';
            $f = AUTOMODEL . '/docs/_MemberExAttr.php';
            if (is_file($f)) {
                ob_start();
                require $f;
                $data = ob_get_contents();
                ob_end_clean();
            } 
            return $data;
        }


    
    
        /**
         *
         *@param type $value
         */
        public function setId($value) {
            return $this->db_model->setId($value);
        }

        /**
         *
         *@return type
         */
        public function getId() {
            return $this->db_model->getId();
        }

        public function _IdField() {
            return 'id';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberId($value) {
            return $this->db_model->setMemberId($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberId() {
            return $this->db_model->getMemberId();
        }

        public function _MemberIdField() {
            return 'member_id';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberExAttrKey($value) {
            return $this->db_model->setMemberExAttrKey($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberExAttrKey() {
            return $this->db_model->getMemberExAttrKey();
        }

        public function _MemberExAttrKeyField() {
            return 'member_ex_attr_key';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberExAttrValue($value) {
            return $this->db_model->setMemberExAttrValue($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberExAttrValue() {
            return $this->db_model->getMemberExAttrValue();
        }

        public function _MemberExAttrValueField() {
            return 'member_ex_attr_value';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrParent($value) {
            return $this->db_model->setExAttrParent($value);
        }

        /**
         *
         *@return type
         */
        public function getExAttrParent() {
            return $this->db_model->getExAttrParent();
        }

        public function _ExAttrParentField() {
            return 'ex_attr_parent';
        }
       
    
    }

endif;
