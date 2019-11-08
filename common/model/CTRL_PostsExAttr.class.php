<?php
!defined('APPPATH') && exit();
/**
 * Description of use table posts_ex_attr 内容的附加字段 *
 * @author autoCreate
 */

require_cache (AUTOMODEL . '/model/DB_PostsExAttr.model.php');

if (!class_exists('CTRL_PostsExAttr')):

    /**
     *  内容的附加字段     
     */
    class CTRL_PostsExAttr extends Model {

        public function __construct() {
            $this->tableName = PREFIX . 'posts_ex_attr';
            $this->db_model = new DB_PostsExAttr();
        }


        public function set($data){ 
            
            $this->setId($this->check($data['Id'],'bigint(20)','','NO')); 
            
            $this->setPostId($this->check($data['PostId'],'bigint(20)','0','YES')); 
            
            $this->setPostExAttrKey($this->check($data['PostExAttrKey'],'char(30)','','YES')); 
            
            $this->setPostExAttrValue($this->check($data['PostExAttrValue'],'longblob','','YES')); 
            
            $this->setExAttrParent($this->check($data['ExAttrParent'],'bigint(20)','0','YES')); 
            
            $this->setExAttrTime($this->check($data['ExAttrTime'],'datetime','','YES')); 
            
            $this->setExAttrKey1($this->check($data['ExAttrKey1'],'varchar(255)','','YES')); 
            
            $this->setExAttrKey2($this->check($data['ExAttrKey2'],'varchar(255)','','YES')); 
            
            $this->setExAttrKey3($this->check($data['ExAttrKey3'],'varchar(255)','','YES')); 
            
            $this->setExAttrKey4($this->check($data['ExAttrKey4'],'varchar(255)','','YES')); 
            
            $this->setExAttrKey5($this->check($data['ExAttrKey5'],'varchar(255)','','YES')); 
            
        }

        public function help() {
            $data = '';
            $f = AUTOMODEL . '/docs/_PostsExAttr.php';
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
        public function setPostId($value) {
            return $this->db_model->setPostId($value);
        }

        /**
         *
         *@return type
         */
        public function getPostId() {
            return $this->db_model->getPostId();
        }

        public function _PostIdField() {
            return 'post_id';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostExAttrKey($value) {
            return $this->db_model->setPostExAttrKey($value);
        }

        /**
         *
         *@return type
         */
        public function getPostExAttrKey() {
            return $this->db_model->getPostExAttrKey();
        }

        public function _PostExAttrKeyField() {
            return 'post_ex_attr_key';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostExAttrValue($value) {
            return $this->db_model->setPostExAttrValue($value);
        }

        /**
         *
         *@return type
         */
        public function getPostExAttrValue() {
            return $this->db_model->getPostExAttrValue();
        }

        public function _PostExAttrValueField() {
            return 'post_ex_attr_value';
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
       
    
        /**
         *建立时间
         *@param type $value
         */
        public function setExAttrTime($value) {
            return $this->db_model->setExAttrTime($value);
        }

        /**
         *建立时间
         *@return type
         */
        public function getExAttrTime() {
            return $this->db_model->getExAttrTime();
        }

        public function _ExAttrTimeField() {
            return 'ex_attr_time';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrKey1($value) {
            return $this->db_model->setExAttrKey1($value);
        }

        /**
         *
         *@return type
         */
        public function getExAttrKey1() {
            return $this->db_model->getExAttrKey1();
        }

        public function _ExAttrKey1Field() {
            return 'ex_attr_key1';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrKey2($value) {
            return $this->db_model->setExAttrKey2($value);
        }

        /**
         *
         *@return type
         */
        public function getExAttrKey2() {
            return $this->db_model->getExAttrKey2();
        }

        public function _ExAttrKey2Field() {
            return 'ex_attr_key2';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrKey3($value) {
            return $this->db_model->setExAttrKey3($value);
        }

        /**
         *
         *@return type
         */
        public function getExAttrKey3() {
            return $this->db_model->getExAttrKey3();
        }

        public function _ExAttrKey3Field() {
            return 'ex_attr_key3';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrKey4($value) {
            return $this->db_model->setExAttrKey4($value);
        }

        /**
         *
         *@return type
         */
        public function getExAttrKey4() {
            return $this->db_model->getExAttrKey4();
        }

        public function _ExAttrKey4Field() {
            return 'ex_attr_key4';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExAttrKey5($value) {
            return $this->db_model->setExAttrKey5($value);
        }

        /**
         *
         *@return type
         */
        public function getExAttrKey5() {
            return $this->db_model->getExAttrKey5();
        }

        public function _ExAttrKey5Field() {
            return 'ex_attr_key5';
        }
       
    
    }

endif;
