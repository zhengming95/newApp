<?php
/**
 * Description of use table wgetlist  *
 * @author autoCreate
 */
if (!class_exists('DB_Wgetlist')):

    /**
     *      */
    class DB_Wgetlist extends DB_Model {
    					 
        public $id = NULL; // 
            
        public $_key = 'id'; //主键
                					 
        public $url = NULL; // 
                					 
        public $pagetime = NULL; // 
                					 
        public $flag = NULL; //是否采集过 1,未采集，2采集过 
                					 
        public $data = NULL; // 
                					 
        public $exdata = NULL; // 
                					 
        public $oid = NULL; // 
                					 
        public $nid = NULL; // 
                					 
        public $pid = NULL; // 
                					 
        public $olddata = NULL; // 
                					 
        public $newdata = NULL; // 
                					 
        public $content_type = NULL; // 
                     
    
    
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
        public function setUrl($value) {
            return $this->url = $value;
        }

        /**
         *
         *@return type
         */
        public function getUrl() {
            return $this->url;
        }

        public function _UrlField() {
            return 'url';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPagetime($value) {
            return $this->pagetime = $value;
        }

        /**
         *
         *@return type
         */
        public function getPagetime() {
            return $this->pagetime;
        }

        public function _PagetimeField() {
            return 'pagetime';
        }
       
    
        /**
         *是否采集过 1,未采集，2采集过
         *@param type $value
         */
        public function setFlag($value) {
            return $this->flag = $value;
        }

        /**
         *是否采集过 1,未采集，2采集过
         *@return type
         */
        public function getFlag() {
            return $this->flag;
        }

        public function _FlagField() {
            return 'flag';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setData($value) {
            return $this->data = $value;
        }

        /**
         *
         *@return type
         */
        public function getData() {
            return $this->data;
        }

        public function _DataField() {
            return 'data';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExdata($value) {
            return $this->exdata = $value;
        }

        /**
         *
         *@return type
         */
        public function getExdata() {
            return $this->exdata;
        }

        public function _ExdataField() {
            return 'exdata';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setOid($value) {
            return $this->oid = $value;
        }

        /**
         *
         *@return type
         */
        public function getOid() {
            return $this->oid;
        }

        public function _OidField() {
            return 'oid';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setNid($value) {
            return $this->nid = $value;
        }

        /**
         *
         *@return type
         */
        public function getNid() {
            return $this->nid;
        }

        public function _NidField() {
            return 'nid';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPid($value) {
            return $this->pid = $value;
        }

        /**
         *
         *@return type
         */
        public function getPid() {
            return $this->pid;
        }

        public function _PidField() {
            return 'pid';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setOlddata($value) {
            return $this->olddata = $value;
        }

        /**
         *
         *@return type
         */
        public function getOlddata() {
            return $this->olddata;
        }

        public function _OlddataField() {
            return 'olddata';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setNewdata($value) {
            return $this->newdata = $value;
        }

        /**
         *
         *@return type
         */
        public function getNewdata() {
            return $this->newdata;
        }

        public function _NewdataField() {
            return 'newdata';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setContentType($value) {
            return $this->content_type = $value;
        }

        /**
         *
         *@return type
         */
        public function getContentType() {
            return $this->content_type;
        }

        public function _ContentTypeField() {
            return 'content_type';
        }
       
    
    }

endif;
