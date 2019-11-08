<?php
!defined('APPPATH') && exit();
/**
 * Description of use table terms 类别 组别管理 *
 * @author autoCreate
 */

require_cache (AUTOMODEL . '/model/DB_Terms.model.php');

if (!class_exists('CTRL_Terms')):

    /**
     *  类别 组别管理     
     */
    class CTRL_Terms extends Model {

        public function __construct() {
            $this->tableName = PREFIX . 'terms';
            $this->db_model = new DB_Terms();
        }


        public function set($data){ 
            
            $this->setTermId($this->check($data['TermId'],'bigint(20)','','NO')); 
            
            $this->setTermType($this->check($data['TermType'],'char(50)','','YES')); 
            
            $this->setTermAlias($this->check($data['TermAlias'],'char(32)','','YES')); 
            
            $this->setTermName($this->check($data['TermName'],'varchar(100)','','YES')); 
            
            $this->setTermParentId($this->check($data['TermParentId'],'bigint(20)','0','YES')); 
            
            $this->setTermDescription($this->check($data['TermDescription'],'text','','YES')); 
            
            $this->setSiteId($this->check($data['SiteId'],'bigint(20)','0','YES')); 
            
            $this->setTermStatus($this->check($data['TermStatus'],'char(10)','1','YES')); 
            
            $this->setTermCount($this->check($data['TermCount'],'bigint(20)','0','YES')); 
            
            $this->setTermOrder($this->check($data['TermOrder'],'bigint(20)','0','YES')); 
            
            $this->setTermExAttr($this->check($data['TermExAttr'],'longblob','','YES')); 
            
            $this->setTermKey1($this->check($data['TermKey1'],'varchar(255)','','YES')); 
            
            $this->setTermKey2($this->check($data['TermKey2'],'varchar(255)','','YES')); 
            
            $this->setTermKey3($this->check($data['TermKey3'],'varchar(255)','','YES')); 
            
            $this->setTermKey4($this->check($data['TermKey4'],'varchar(255)','','YES')); 
            
            $this->setTermKey5($this->check($data['TermKey5'],'varchar(255)','','YES')); 
            
            $this->setTermKey6($this->check($data['TermKey6'],'varchar(255)','','YES')); 
            
            $this->setTermKey7($this->check($data['TermKey7'],'varchar(255)','','YES')); 
            
            $this->setTermKey8($this->check($data['TermKey8'],'varchar(255)','','YES')); 
            
            $this->setTermKey9($this->check($data['TermKey9'],'text','','YES')); 
            
            $this->setTermKey10($this->check($data['TermKey10'],'text','','YES')); 
            
        }

        public function help() {
            $data = '';
            $f = AUTOMODEL . '/docs/_Terms.php';
            if (is_file($f)) {
                ob_start();
                require $f;
                $data = ob_get_contents();
                ob_end_clean();
            } 
            return $data;
        }


    
    
        /**
         *分类id
         *@param type $value
         */
        public function setTermId($value) {
            return $this->db_model->setTermId($value);
        }

        /**
         *分类id
         *@return type
         */
        public function getTermId() {
            return $this->db_model->getTermId();
        }

        public function _TermIdField() {
            return 'term_id';
        }
       
    
        /**
         *分类类型
         *@param type $value
         */
        public function setTermType($value) {
            return $this->db_model->setTermType($value);
        }

        /**
         *分类类型
         *@return type
         */
        public function getTermType() {
            return $this->db_model->getTermType();
        }

        public function _TermTypeField() {
            return 'term_type';
        }
       
    
        /**
         *分类别名
         *@param type $value
         */
        public function setTermAlias($value) {
            return $this->db_model->setTermAlias($value);
        }

        /**
         *分类别名
         *@return type
         */
        public function getTermAlias() {
            return $this->db_model->getTermAlias();
        }

        public function _TermAliasField() {
            return 'term_alias';
        }
       
    
        /**
         *分类名称
         *@param type $value
         */
        public function setTermName($value) {
            return $this->db_model->setTermName($value);
        }

        /**
         *分类名称
         *@return type
         */
        public function getTermName() {
            return $this->db_model->getTermName();
        }

        public function _TermNameField() {
            return 'term_name';
        }
       
    
        /**
         *上一级分类
         *@param type $value
         */
        public function setTermParentId($value) {
            return $this->db_model->setTermParentId($value);
        }

        /**
         *上一级分类
         *@return type
         */
        public function getTermParentId() {
            return $this->db_model->getTermParentId();
        }

        public function _TermParentIdField() {
            return 'term_parent_id';
        }
       
    
        /**
         *分类描述
         *@param type $value
         */
        public function setTermDescription($value) {
            return $this->db_model->setTermDescription($value);
        }

        /**
         *分类描述
         *@return type
         */
        public function getTermDescription() {
            return $this->db_model->getTermDescription();
        }

        public function _TermDescriptionField() {
            return 'term_description';
        }
       
    
        /**
         *所属的站点
         *@param type $value
         */
        public function setSiteId($value) {
            return $this->db_model->setSiteId($value);
        }

        /**
         *所属的站点
         *@return type
         */
        public function getSiteId() {
            return $this->db_model->getSiteId();
        }

        public function _SiteIdField() {
            return 'site_id';
        }
       
    
        /**
         *当前状态
         *@param type $value
         */
        public function setTermStatus($value) {
            return $this->db_model->setTermStatus($value);
        }

        /**
         *当前状态
         *@return type
         */
        public function getTermStatus() {
            return $this->db_model->getTermStatus();
        }

        public function _TermStatusField() {
            return 'term_status';
        }
       
    
        /**
         *分类引用数量
         *@param type $value
         */
        public function setTermCount($value) {
            return $this->db_model->setTermCount($value);
        }

        /**
         *分类引用数量
         *@return type
         */
        public function getTermCount() {
            return $this->db_model->getTermCount();
        }

        public function _TermCountField() {
            return 'term_count';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermOrder($value) {
            return $this->db_model->setTermOrder($value);
        }

        /**
         *
         *@return type
         */
        public function getTermOrder() {
            return $this->db_model->getTermOrder();
        }

        public function _TermOrderField() {
            return 'term_order';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermExAttr($value) {
            return $this->db_model->setTermExAttr($value);
        }

        /**
         *
         *@return type
         */
        public function getTermExAttr() {
            return $this->db_model->getTermExAttr();
        }

        public function _TermExAttrField() {
            return 'term_ex_attr';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey1($value) {
            return $this->db_model->setTermKey1($value);
        }

        /**
         *
         *@return type
         */
        public function getTermKey1() {
            return $this->db_model->getTermKey1();
        }

        public function _TermKey1Field() {
            return 'term_key1';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey2($value) {
            return $this->db_model->setTermKey2($value);
        }

        /**
         *
         *@return type
         */
        public function getTermKey2() {
            return $this->db_model->getTermKey2();
        }

        public function _TermKey2Field() {
            return 'term_key2';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey3($value) {
            return $this->db_model->setTermKey3($value);
        }

        /**
         *
         *@return type
         */
        public function getTermKey3() {
            return $this->db_model->getTermKey3();
        }

        public function _TermKey3Field() {
            return 'term_key3';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey4($value) {
            return $this->db_model->setTermKey4($value);
        }

        /**
         *
         *@return type
         */
        public function getTermKey4() {
            return $this->db_model->getTermKey4();
        }

        public function _TermKey4Field() {
            return 'term_key4';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey5($value) {
            return $this->db_model->setTermKey5($value);
        }

        /**
         *
         *@return type
         */
        public function getTermKey5() {
            return $this->db_model->getTermKey5();
        }

        public function _TermKey5Field() {
            return 'term_key5';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey6($value) {
            return $this->db_model->setTermKey6($value);
        }

        /**
         *
         *@return type
         */
        public function getTermKey6() {
            return $this->db_model->getTermKey6();
        }

        public function _TermKey6Field() {
            return 'term_key6';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey7($value) {
            return $this->db_model->setTermKey7($value);
        }

        /**
         *
         *@return type
         */
        public function getTermKey7() {
            return $this->db_model->getTermKey7();
        }

        public function _TermKey7Field() {
            return 'term_key7';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey8($value) {
            return $this->db_model->setTermKey8($value);
        }

        /**
         *
         *@return type
         */
        public function getTermKey8() {
            return $this->db_model->getTermKey8();
        }

        public function _TermKey8Field() {
            return 'term_key8';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey9($value) {
            return $this->db_model->setTermKey9($value);
        }

        /**
         *
         *@return type
         */
        public function getTermKey9() {
            return $this->db_model->getTermKey9();
        }

        public function _TermKey9Field() {
            return 'term_key9';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setTermKey10($value) {
            return $this->db_model->setTermKey10($value);
        }

        /**
         *
         *@return type
         */
        public function getTermKey10() {
            return $this->db_model->getTermKey10();
        }

        public function _TermKey10Field() {
            return 'term_key10';
        }
       
    
    }

endif;
