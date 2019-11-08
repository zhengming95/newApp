<?php
/**
 * Description of use table relationships 分组与信息内容的关联字段 *
 * @author autoCreate
 */
if (!class_exists('DB_Relationships')):

    /**
     * 分组与信息内容的关联字段     */
    class DB_Relationships extends DB_Model {
    					 
        public $id = NULL; // 
            
        public $_key = 'id'; //主键
                					 
        public $object_id = NULL; // 
                					 
        public $term_id = NULL; // 
                					 
        public $site_id = NULL; //站点标识 
                     
    
    
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
        public function setObjectId($value) {
            return $this->object_id = $value;
        }

        /**
         *
         *@return type
         */
        public function getObjectId() {
            return $this->object_id;
        }

        public function _ObjectIdField() {
            return 'object_id';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermId($value) {
            return $this->term_id = $value;
        }

        /**
         *
         *@return type
         */
        public function getTermId() {
            return $this->term_id;
        }

        public function _TermIdField() {
            return 'term_id';
        }
       
    
        /**
         *站点标识
         *@param type $value
         */
        public function setSiteId($value) {
            return $this->site_id = $value;
        }

        /**
         *站点标识
         *@return type
         */
        public function getSiteId() {
            return $this->site_id;
        }

        public function _SiteIdField() {
            return 'site_id';
        }
       
    
    }

endif;
