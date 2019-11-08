<?php
/**
 * Description of use table oid 自动生成id的表
每个表的主键都从这里取得 防止系统id重复 *
 * @author autoCreate
 */
if (!class_exists('DB_Oid')):

    /**
     * 自动生成id的表
每个表的主键都从这里取得 防止系统id重复     */
    class DB_Oid extends DB_Model {
    					 
        public $id = NULL; //自动id 
            
        public $_key = 'id'; //主键
                					 
        public $create_time = NULL; //建立时间 
                					 
        public $type = NULL; //什么类型的请求 
                     
    
    
        /**
         *自动id
         *@param type $value
         */
        public function setId($value) {
            return $this->id = $value;
        }

        /**
         *自动id
         *@return type
         */
        public function getId() {
            return $this->id;
        }

        public function _IdField() {
            return 'id';
        }
       
    
        /**
         *建立时间
         *@param type $value
         */
        public function setCreateTime($value) {
            return $this->create_time = $value;
        }

        /**
         *建立时间
         *@return type
         */
        public function getCreateTime() {
            return $this->create_time;
        }

        public function _CreateTimeField() {
            return 'create_time';
        }
       
    
        /**
         *什么类型的请求
         *@param type $value
         */
        public function setType($value) {
            return $this->type = $value;
        }

        /**
         *什么类型的请求
         *@return type
         */
        public function getType() {
            return $this->type;
        }

        public function _TypeField() {
            return 'type';
        }
       
    
    }

endif;
