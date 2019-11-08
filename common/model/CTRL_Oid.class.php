<?php
!defined('APPPATH') && exit();
/**
 * Description of use table oid 自动生成id的表
每个表的主键都从这里取得 防止系统id重复 *
 * @author autoCreate
 */

require_cache (AUTOMODEL . '/model/DB_Oid.model.php');

if (!class_exists('CTRL_Oid')):

    /**
     *  自动生成id的表
每个表的主键都从这里取得 防止系统id重复     
     */
    class CTRL_Oid extends Model {

        public function __construct() {
            $this->tableName = PREFIX . 'oid';
            $this->db_model = new DB_Oid();
        }


        public function set($data){ 
            
            $this->setId($this->check($data['Id'],'bigint(20)','','NO')); 
            
            $this->setCreateTime($this->check($data['CreateTime'],'datetime','','NO')); 
            
            $this->setType($this->check($data['Type'],'varchar(32)','','YES')); 
            
        }

        public function help() {
            $data = '';
            $f = AUTOMODEL . '/docs/_Oid.php';
            if (is_file($f)) {
                ob_start();
                require $f;
                $data = ob_get_contents();
                ob_end_clean();
            } 
            return $data;
        }


    
    
        /**
         *自动id
         *@param type $value
         */
        public function setId($value) {
            return $this->db_model->setId($value);
        }

        /**
         *自动id
         *@return type
         */
        public function getId() {
            return $this->db_model->getId();
        }

        public function _IdField() {
            return 'id';
        }
       
    
        /**
         *建立时间
         *@param type $value
         */
        public function setCreateTime($value) {
            return $this->db_model->setCreateTime($value);
        }

        /**
         *建立时间
         *@return type
         */
        public function getCreateTime() {
            return $this->db_model->getCreateTime();
        }

        public function _CreateTimeField() {
            return 'create_time';
        }
       
    
        /**
         *什么类型的请求
         *@param type $value
         */
        public function setType($value) {
            return $this->db_model->setType($value);
        }

        /**
         *什么类型的请求
         *@return type
         */
        public function getType() {
            return $this->db_model->getType();
        }

        public function _TypeField() {
            return 'type';
        }
       
    
    }

endif;
