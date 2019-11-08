<?php
!defined('APPPATH') && exit();
/**
 * Description of use table wgetlist  *
 * @author autoCreate
 */

require_cache (AUTOMODEL . '/model/DB_Wgetlist.model.php');

if (!class_exists('CTRL_Wgetlist')):

    /**
     *       
     */
    class CTRL_Wgetlist extends Model {

        public function __construct() {
            $this->tableName = PREFIX . 'wgetlist';
            $this->db_model = new DB_Wgetlist();
        }


        public function set($data){ 
            
            $this->setId($this->check($data['Id'],'bigint(20)','','NO')); 
            
            $this->setUrl($this->check($data['Url'],'varchar(255)','','YES')); 
            
            $this->setPagetime($this->check($data['Pagetime'],'datetime','','YES')); 
            
            $this->setFlag($this->check($data['Flag'],'char(2)','','YES')); 
            
            $this->setData($this->check($data['Data'],'longblob','','YES')); 
            
            $this->setExdata($this->check($data['Exdata'],'text','','YES')); 
            
            $this->setOid($this->check($data['Oid'],'bigint(20)','','YES')); 
            
            $this->setNid($this->check($data['Nid'],'bigint(20)','','YES')); 
            
            $this->setPid($this->check($data['Pid'],'bigint(20)','','YES')); 
            
            $this->setOlddata($this->check($data['Olddata'],'text','','YES')); 
            
            $this->setNewdata($this->check($data['Newdata'],'text','','YES')); 
            
            $this->setContentType($this->check($data['ContentType'],'varchar(255)','','YES')); 
            
        }

        public function help() {
            $data = '';
            $f = AUTOMODEL . '/docs/_Wgetlist.php';
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
        public function setUrl($value) {
            return $this->db_model->setUrl($value);
        }

        /**
         *
         *@return type
         */
        public function getUrl() {
            return $this->db_model->getUrl();
        }

        public function _UrlField() {
            return 'url';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPagetime($value) {
            return $this->db_model->setPagetime($value);
        }

        /**
         *
         *@return type
         */
        public function getPagetime() {
            return $this->db_model->getPagetime();
        }

        public function _PagetimeField() {
            return 'pagetime';
        }
       
    
        /**
         *是否采集过 1,未采集，2采集过
         *@param type $value
         */
        public function setFlag($value) {
            return $this->db_model->setFlag($value);
        }

        /**
         *是否采集过 1,未采集，2采集过
         *@return type
         */
        public function getFlag() {
            return $this->db_model->getFlag();
        }

        public function _FlagField() {
            return 'flag';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setData($value) {
            return $this->db_model->setData($value);
        }

        /**
         *
         *@return type
         */
        public function getData() {
            return $this->db_model->getData();
        }

        public function _DataField() {
            return 'data';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setExdata($value) {
            return $this->db_model->setExdata($value);
        }

        /**
         *
         *@return type
         */
        public function getExdata() {
            return $this->db_model->getExdata();
        }

        public function _ExdataField() {
            return 'exdata';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setOid($value) {
            return $this->db_model->setOid($value);
        }

        /**
         *
         *@return type
         */
        public function getOid() {
            return $this->db_model->getOid();
        }

        public function _OidField() {
            return 'oid';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setNid($value) {
            return $this->db_model->setNid($value);
        }

        /**
         *
         *@return type
         */
        public function getNid() {
            return $this->db_model->getNid();
        }

        public function _NidField() {
            return 'nid';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPid($value) {
            return $this->db_model->setPid($value);
        }

        /**
         *
         *@return type
         */
        public function getPid() {
            return $this->db_model->getPid();
        }

        public function _PidField() {
            return 'pid';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setOlddata($value) {
            return $this->db_model->setOlddata($value);
        }

        /**
         *
         *@return type
         */
        public function getOlddata() {
            return $this->db_model->getOlddata();
        }

        public function _OlddataField() {
            return 'olddata';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setNewdata($value) {
            return $this->db_model->setNewdata($value);
        }

        /**
         *
         *@return type
         */
        public function getNewdata() {
            return $this->db_model->getNewdata();
        }

        public function _NewdataField() {
            return 'newdata';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setContentType($value) {
            return $this->db_model->setContentType($value);
        }

        /**
         *
         *@return type
         */
        public function getContentType() {
            return $this->db_model->getContentType();
        }

        public function _ContentTypeField() {
            return 'content_type';
        }
       
    
    }

endif;
