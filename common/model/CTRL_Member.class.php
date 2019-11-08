<?php
!defined('APPPATH') && exit();
/**
 * Description of use table member 用户 *
 * @author autoCreate
 */

require_cache (AUTOMODEL . '/model/DB_Member.model.php');

if (!class_exists('CTRL_Member')):

    /**
     *  用户     
     */
    class CTRL_Member extends Model {

        public function __construct() {
            $this->tableName = PREFIX . 'member';
            $this->db_model = new DB_Member();
        }


        public function set($data){ 
            
            $this->setMemberId($this->check($data['MemberId'],'bigint(20)','','NO')); 
            
            $this->setMemberNicename($this->check($data['MemberNicename'],'varchar(255)','','YES')); 
            
            $this->setMemberName($this->check($data['MemberName'],'varchar(255)','','YES')); 
            
            $this->setMemberPassword($this->check($data['MemberPassword'],'char(255)','','YES')); 
            
            $this->setMemberMobile($this->check($data['MemberMobile'],'char(11)','','YES')); 
            
            $this->setMemberType($this->check($data['MemberType'],'char(20)','','YES')); 
            
            $this->setMemberEmail($this->check($data['MemberEmail'],'varchar(255)','','YES')); 
            
            $this->setMemberExAttr($this->check($data['MemberExAttr'],'longblob','','YES')); 
            
            $this->setSiteId($this->check($data['SiteId'],'bigint(20)','0','YES')); 
            
            $this->setMemberStatus($this->check($data['MemberStatus'],'char(32)','','YES')); 
            
            $this->setMemberKey1($this->check($data['MemberKey1'],'varchar(255)','','YES')); 
            
            $this->setMemberKey2($this->check($data['MemberKey2'],'varchar(255)','','YES')); 
            
            $this->setMemberKey3($this->check($data['MemberKey3'],'varchar(255)','','YES')); 
            
            $this->setMemberKey4($this->check($data['MemberKey4'],'varchar(255)','','YES')); 
            
            $this->setMemberKey5($this->check($data['MemberKey5'],'varchar(255)','','YES')); 
            
            $this->setMemberKey6($this->check($data['MemberKey6'],'varchar(255)','','YES')); 
            
            $this->setMemberKey7($this->check($data['MemberKey7'],'varchar(255)','','YES')); 
            
            $this->setMemberKey8($this->check($data['MemberKey8'],'varchar(255)','','YES')); 
            
            $this->setMemberKey9($this->check($data['MemberKey9'],'text','','YES')); 
            
            $this->setMemberKey10($this->check($data['MemberKey10'],'text','','YES')); 
            
        }

        public function help() {
            $data = '';
            $f = AUTOMODEL . '/docs/_Member.php';
            if (is_file($f)) {
                ob_start();
                require $f;
                $data = ob_get_contents();
                ob_end_clean();
            } 
            return $data;
        }


    
    
        /**
         *用户的标识
         *@param type $value
         */
        public function setMemberId($value) {
            return $this->db_model->setMemberId($value);
        }

        /**
         *用户的标识
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
        public function setMemberNicename($value) {
            return $this->db_model->setMemberNicename($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberNicename() {
            return $this->db_model->getMemberNicename();
        }

        public function _MemberNicenameField() {
            return 'member_nicename';
        }
       
    
        /**
         *用户登录名称登录帐号
         *@param type $value
         */
        public function setMemberName($value) {
            return $this->db_model->setMemberName($value);
        }

        /**
         *用户登录名称登录帐号
         *@return type
         */
        public function getMemberName() {
            return $this->db_model->getMemberName();
        }

        public function _MemberNameField() {
            return 'member_name';
        }
       
    
        /**
         *密码
         *@param type $value
         */
        public function setMemberPassword($value) {
            return $this->db_model->setMemberPassword($value);
        }

        /**
         *密码
         *@return type
         */
        public function getMemberPassword() {
            return $this->db_model->getMemberPassword();
        }

        public function _MemberPasswordField() {
            return 'member_password';
        }
       
    
        /**
         *手机号
         *@param type $value
         */
        public function setMemberMobile($value) {
            return $this->db_model->setMemberMobile($value);
        }

        /**
         *手机号
         *@return type
         */
        public function getMemberMobile() {
            return $this->db_model->getMemberMobile();
        }

        public function _MemberMobileField() {
            return 'member_mobile';
        }
       
    
        /**
         *用户类型 1系统管理员 2编辑 3普通用户
         *@param type $value
         */
        public function setMemberType($value) {
            return $this->db_model->setMemberType($value);
        }

        /**
         *用户类型 1系统管理员 2编辑 3普通用户
         *@return type
         */
        public function getMemberType() {
            return $this->db_model->getMemberType();
        }

        public function _MemberTypeField() {
            return 'member_type';
        }
       
    
        /**
         *邮箱
         *@param type $value
         */
        public function setMemberEmail($value) {
            return $this->db_model->setMemberEmail($value);
        }

        /**
         *邮箱
         *@return type
         */
        public function getMemberEmail() {
            return $this->db_model->getMemberEmail();
        }

        public function _MemberEmailField() {
            return 'member_email';
        }
       
    
        /**
         *附件属性
         *@param type $value
         */
        public function setMemberExAttr($value) {
            return $this->db_model->setMemberExAttr($value);
        }

        /**
         *附件属性
         *@return type
         */
        public function getMemberExAttr() {
            return $this->db_model->getMemberExAttr();
        }

        public function _MemberExAttrField() {
            return 'member_ex_attr';
        }
       
    
        /**
         *站点的标识
         *@param type $value
         */
        public function setSiteId($value) {
            return $this->db_model->setSiteId($value);
        }

        /**
         *站点的标识
         *@return type
         */
        public function getSiteId() {
            return $this->db_model->getSiteId();
        }

        public function _SiteIdField() {
            return 'site_id';
        }
       
    
        /**
         *用户状态
         *@param type $value
         */
        public function setMemberStatus($value) {
            return $this->db_model->setMemberStatus($value);
        }

        /**
         *用户状态
         *@return type
         */
        public function getMemberStatus() {
            return $this->db_model->getMemberStatus();
        }

        public function _MemberStatusField() {
            return 'member_status';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey1($value) {
            return $this->db_model->setMemberKey1($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberKey1() {
            return $this->db_model->getMemberKey1();
        }

        public function _MemberKey1Field() {
            return 'member_key1';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey2($value) {
            return $this->db_model->setMemberKey2($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberKey2() {
            return $this->db_model->getMemberKey2();
        }

        public function _MemberKey2Field() {
            return 'member_key2';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey3($value) {
            return $this->db_model->setMemberKey3($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberKey3() {
            return $this->db_model->getMemberKey3();
        }

        public function _MemberKey3Field() {
            return 'member_key3';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey4($value) {
            return $this->db_model->setMemberKey4($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberKey4() {
            return $this->db_model->getMemberKey4();
        }

        public function _MemberKey4Field() {
            return 'member_key4';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey5($value) {
            return $this->db_model->setMemberKey5($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberKey5() {
            return $this->db_model->getMemberKey5();
        }

        public function _MemberKey5Field() {
            return 'member_key5';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey6($value) {
            return $this->db_model->setMemberKey6($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberKey6() {
            return $this->db_model->getMemberKey6();
        }

        public function _MemberKey6Field() {
            return 'member_key6';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey7($value) {
            return $this->db_model->setMemberKey7($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberKey7() {
            return $this->db_model->getMemberKey7();
        }

        public function _MemberKey7Field() {
            return 'member_key7';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey8($value) {
            return $this->db_model->setMemberKey8($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberKey8() {
            return $this->db_model->getMemberKey8();
        }

        public function _MemberKey8Field() {
            return 'member_key8';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey9($value) {
            return $this->db_model->setMemberKey9($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberKey9() {
            return $this->db_model->getMemberKey9();
        }

        public function _MemberKey9Field() {
            return 'member_key9';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey10($value) {
            return $this->db_model->setMemberKey10($value);
        }

        /**
         *
         *@return type
         */
        public function getMemberKey10() {
            return $this->db_model->getMemberKey10();
        }

        public function _MemberKey10Field() {
            return 'member_key10';
        }
       
    
    }

endif;
