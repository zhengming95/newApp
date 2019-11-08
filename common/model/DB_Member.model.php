<?php
/**
 * Description of use table member 用户 *
 * @author autoCreate
 */
if (!class_exists('DB_Member')):

    /**
     * 用户     */
    class DB_Member extends DB_Model {
    					 
        public $member_id = NULL; //用户的标识 
            
        public $_key = 'member_id'; //主键
                					 
        public $member_nicename = NULL; // 
                					 
        public $member_name = NULL; //用户登录名称登录帐号 
                					 
        public $member_password = NULL; //密码 
                					 
        public $member_mobile = NULL; //手机号 
                					 
        public $member_type = NULL; //用户类型 1系统管理员 2编辑 3普通用户 
                					 
        public $member_email = NULL; //邮箱 
                					 
        public $member_ex_attr = NULL; //附件属性 
                					 
        public $site_id = 0; //站点的标识 
                					 
        public $member_status = NULL; //用户状态 
                					 
        public $member_key1 = NULL; // 
                					 
        public $member_key2 = NULL; // 
                					 
        public $member_key3 = NULL; // 
                					 
        public $member_key4 = NULL; // 
                					 
        public $member_key5 = NULL; // 
                					 
        public $member_key6 = NULL; // 
                					 
        public $member_key7 = NULL; // 
                					 
        public $member_key8 = NULL; // 
                					 
        public $member_key9 = NULL; // 
                					 
        public $member_key10 = NULL; // 
                     
    
    
        /**
         *用户的标识
         *@param type $value
         */
        public function setMemberId($value) {
            return $this->member_id = $value;
        }

        /**
         *用户的标识
         *@return type
         */
        public function getMemberId() {
            return $this->member_id;
        }

        public function _MemberIdField() {
            return 'member_id';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberNicename($value) {
            return $this->member_nicename = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberNicename() {
            return $this->member_nicename;
        }

        public function _MemberNicenameField() {
            return 'member_nicename';
        }
       
    
        /**
         *用户登录名称登录帐号
         *@param type $value
         */
        public function setMemberName($value) {
            return $this->member_name = $value;
        }

        /**
         *用户登录名称登录帐号
         *@return type
         */
        public function getMemberName() {
            return $this->member_name;
        }

        public function _MemberNameField() {
            return 'member_name';
        }
       
    
        /**
         *密码
         *@param type $value
         */
        public function setMemberPassword($value) {
            return $this->member_password = $value;
        }

        /**
         *密码
         *@return type
         */
        public function getMemberPassword() {
            return $this->member_password;
        }

        public function _MemberPasswordField() {
            return 'member_password';
        }
       
    
        /**
         *手机号
         *@param type $value
         */
        public function setMemberMobile($value) {
            return $this->member_mobile = $value;
        }

        /**
         *手机号
         *@return type
         */
        public function getMemberMobile() {
            return $this->member_mobile;
        }

        public function _MemberMobileField() {
            return 'member_mobile';
        }
       
    
        /**
         *用户类型 1系统管理员 2编辑 3普通用户
         *@param type $value
         */
        public function setMemberType($value) {
            return $this->member_type = $value;
        }

        /**
         *用户类型 1系统管理员 2编辑 3普通用户
         *@return type
         */
        public function getMemberType() {
            return $this->member_type;
        }

        public function _MemberTypeField() {
            return 'member_type';
        }
       
    
        /**
         *邮箱
         *@param type $value
         */
        public function setMemberEmail($value) {
            return $this->member_email = $value;
        }

        /**
         *邮箱
         *@return type
         */
        public function getMemberEmail() {
            return $this->member_email;
        }

        public function _MemberEmailField() {
            return 'member_email';
        }
       
    
        /**
         *附件属性
         *@param type $value
         */
        public function setMemberExAttr($value) {
            return $this->member_ex_attr = $value;
        }

        /**
         *附件属性
         *@return type
         */
        public function getMemberExAttr() {
            return $this->member_ex_attr;
        }

        public function _MemberExAttrField() {
            return 'member_ex_attr';
        }
       
    
        /**
         *站点的标识
         *@param type $value
         */
        public function setSiteId($value) {
            return $this->site_id = $value;
        }

        /**
         *站点的标识
         *@return type
         */
        public function getSiteId() {
            return $this->site_id;
        }

        public function _SiteIdField() {
            return 'site_id';
        }
       
    
        /**
         *用户状态
         *@param type $value
         */
        public function setMemberStatus($value) {
            return $this->member_status = $value;
        }

        /**
         *用户状态
         *@return type
         */
        public function getMemberStatus() {
            return $this->member_status;
        }

        public function _MemberStatusField() {
            return 'member_status';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey1($value) {
            return $this->member_key1 = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberKey1() {
            return $this->member_key1;
        }

        public function _MemberKey1Field() {
            return 'member_key1';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey2($value) {
            return $this->member_key2 = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberKey2() {
            return $this->member_key2;
        }

        public function _MemberKey2Field() {
            return 'member_key2';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey3($value) {
            return $this->member_key3 = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberKey3() {
            return $this->member_key3;
        }

        public function _MemberKey3Field() {
            return 'member_key3';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey4($value) {
            return $this->member_key4 = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberKey4() {
            return $this->member_key4;
        }

        public function _MemberKey4Field() {
            return 'member_key4';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey5($value) {
            return $this->member_key5 = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberKey5() {
            return $this->member_key5;
        }

        public function _MemberKey5Field() {
            return 'member_key5';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey6($value) {
            return $this->member_key6 = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberKey6() {
            return $this->member_key6;
        }

        public function _MemberKey6Field() {
            return 'member_key6';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey7($value) {
            return $this->member_key7 = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberKey7() {
            return $this->member_key7;
        }

        public function _MemberKey7Field() {
            return 'member_key7';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey8($value) {
            return $this->member_key8 = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberKey8() {
            return $this->member_key8;
        }

        public function _MemberKey8Field() {
            return 'member_key8';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey9($value) {
            return $this->member_key9 = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberKey9() {
            return $this->member_key9;
        }

        public function _MemberKey9Field() {
            return 'member_key9';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setMemberKey10($value) {
            return $this->member_key10 = $value;
        }

        /**
         *
         *@return type
         */
        public function getMemberKey10() {
            return $this->member_key10;
        }

        public function _MemberKey10Field() {
            return 'member_key10';
        }
       
    
    }

endif;
