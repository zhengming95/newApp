<?php
!defined('APPPATH') && exit();
/**
 * Description of use table relationships 分组与信息内容的关联字段 *
 * @author autoCreate
 */

require_cache (AUTOMODEL . '/model/DB_Relationships.model.php');

if (!class_exists('CTRL_Relationships')):

    /**
     *  分组与信息内容的关联字段     
     */
    class CTRL_Relationships extends Model {

        public function __construct() {
            $this->tableName = PREFIX . 'relationships';
            $this->db_model = new DB_Relationships();
        }


        public function set($data){ 
            
            $this->setId($this->check($data['Id'],'bigint(20)','','NO')); 
            
            $this->setObjectId($this->check($data['ObjectId'],'bigint(20)','','YES')); 
            
            $this->setTermId($this->check($data['TermId'],'bigint(20)','','YES')); 
            
            $this->setSiteId($this->check($data['SiteId'],'bigint(20)','','YES')); 
            
        }

        public function help() {
            $data = '';
            $f = AUTOMODEL . '/docs/_Relationships.php';
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
        public function setObjectId($value) {
            return $this->db_model->setObjectId($value);
        }

        /**
         *
         *@return type
         */
        public function getObjectId() {
            return $this->db_model->getObjectId();
        }

        public function _ObjectIdField() {
            return 'object_id';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermId($value) {
            return $this->db_model->setTermId($value);
        }

        /**
         *
         *@return type
         */
        public function getTermId() {
            return $this->db_model->getTermId();
        }

        public function _TermIdField() {
            return 'term_id';
        }
       
    
        /**
         *站点标识
         *@param type $value
         */
        public function setSiteId($value) {
            return $this->db_model->setSiteId($value);
        }

        /**
         *站点标识
         *@return type
         */
        public function getSiteId() {
            return $this->db_model->getSiteId();
        }

        public function _SiteIdField() {
            return 'site_id';
        }
       
    
    }

endif;
