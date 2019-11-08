<?php
!defined('APPPATH') && exit();
/**
 * Description of use table posts 信息内容表 *
 * @author autoCreate
 */

require_cache (AUTOMODEL . '/model/DB_Posts.model.php');

if (!class_exists('CTRL_Posts')):

    /**
     *  信息内容表     
     */
    class CTRL_Posts extends Model {

        public function __construct() {
            $this->tableName = PREFIX . 'posts';
            $this->db_model = new DB_Posts();
        }


        public function set($data){ 
            
            $this->setPostId($this->check($data['PostId'],'bigint(20)','','NO')); 
            
            $this->setSiteId($this->check($data['SiteId'],'bigint(20)','0','YES')); 
            
            $this->setMemberId($this->check($data['MemberId'],'bigint(20)','0','YES')); 
            
            $this->setPostAlias($this->check($data['PostAlias'],'varchar(32)','','YES')); 
            
            $this->setPostTitle($this->check($data['PostTitle'],'varchar(512)','','YES')); 
            
            $this->setPostDate($this->check($data['PostDate'],'datetime','','YES')); 
            
            $this->setPostKeyword($this->check($data['PostKeyword'],'varchar(512)','','YES')); 
            
            $this->setPostExcerpt($this->check($data['PostExcerpt'],'text','','YES')); 
            
            $this->setPostImage($this->check($data['PostImage'],'varchar(512)','','YES')); 
            
            $this->setPostCategory($this->check($data['PostCategory'],'varchar(32)','','YES')); 
            
            $this->setPostContent($this->check($data['PostContent'],'longtext','','YES')); 
            
            $this->setPostStatus($this->check($data['PostStatus'],'char(32)','','YES')); 
            
            $this->setPostCommentStatus($this->check($data['PostCommentStatus'],'char(32)','','YES')); 
            
            $this->setPostParent($this->check($data['PostParent'],'varchar(20)','0','YES')); 
            
            $this->setPostType($this->check($data['PostType'],'char(32)','','YES')); 
            
            $this->setPostMimeType($this->check($data['PostMimeType'],'char(32)','','YES')); 
            
            $this->setPostCommentCount($this->check($data['PostCommentCount'],'bigint(20)','0','YES')); 
            
            $this->setPostExAttr($this->check($data['PostExAttr'],'longblob','','YES')); 
            
            $this->setPostOrder($this->check($data['PostOrder'],'bigint(20)','0','YES')); 
            
            $this->setPostKey1($this->check($data['PostKey1'],'varchar(255)','','YES')); 
            
            $this->setPostKey2($this->check($data['PostKey2'],'varchar(255)','','YES')); 
            
            $this->setPostKey3($this->check($data['PostKey3'],'varchar(255)','','YES')); 
            
            $this->setPostKey4($this->check($data['PostKey4'],'varchar(255)','','YES')); 
            
            $this->setPostKey5($this->check($data['PostKey5'],'varchar(255)','','YES')); 
            
            $this->setPostKey6($this->check($data['PostKey6'],'varchar(255)','','YES')); 
            
            $this->setPostKey7($this->check($data['PostKey7'],'varchar(255)','','YES')); 
            
            $this->setPostKey8($this->check($data['PostKey8'],'varchar(255)','','YES')); 
            
            $this->setPostKey9($this->check($data['PostKey9'],'text','','YES')); 
            
            $this->setPostKey10($this->check($data['PostKey10'],'text','','YES')); 
            
        }

        public function help() {
            $data = '';
            $f = AUTOMODEL . '/docs/_Posts.php';
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
       
    
        /**
         *发布人信息
         *@param type $value
         */
        public function setMemberId($value) {
            return $this->db_model->setMemberId($value);
        }

        /**
         *发布人信息
         *@return type
         */
        public function getMemberId() {
            return $this->db_model->getMemberId();
        }

        public function _MemberIdField() {
            return 'member_id';
        }
       
    
        /**
         *别名
         *@param type $value
         */
        public function setPostAlias($value) {
            return $this->db_model->setPostAlias($value);
        }

        /**
         *别名
         *@return type
         */
        public function getPostAlias() {
            return $this->db_model->getPostAlias();
        }

        public function _PostAliasField() {
            return 'post_alias';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostTitle($value) {
            return $this->db_model->setPostTitle($value);
        }

        /**
         *
         *@return type
         */
        public function getPostTitle() {
            return $this->db_model->getPostTitle();
        }

        public function _PostTitleField() {
            return 'post_title';
        }
       
    
        /**
         *发布时间
         *@param type $value
         */
        public function setPostDate($value) {
            return $this->db_model->setPostDate($value);
        }

        /**
         *发布时间
         *@return type
         */
        public function getPostDate() {
            return $this->db_model->getPostDate();
        }

        public function _PostDateField() {
            return 'post_date';
        }
       
    
        /**
         *关键词
         *@param type $value
         */
        public function setPostKeyword($value) {
            return $this->db_model->setPostKeyword($value);
        }

        /**
         *关键词
         *@return type
         */
        public function getPostKeyword() {
            return $this->db_model->getPostKeyword();
        }

        public function _PostKeywordField() {
            return 'post_keyword';
        }
       
    
        /**
         *摘要
         *@param type $value
         */
        public function setPostExcerpt($value) {
            return $this->db_model->setPostExcerpt($value);
        }

        /**
         *摘要
         *@return type
         */
        public function getPostExcerpt() {
            return $this->db_model->getPostExcerpt();
        }

        public function _PostExcerptField() {
            return 'post_excerpt';
        }
       
    
        /**
         *图片
         *@param type $value
         */
        public function setPostImage($value) {
            return $this->db_model->setPostImage($value);
        }

        /**
         *图片
         *@return type
         */
        public function getPostImage() {
            return $this->db_model->getPostImage();
        }

        public function _PostImageField() {
            return 'post_image';
        }
       
    
        /**
         *分类
         *@param type $value
         */
        public function setPostCategory($value) {
            return $this->db_model->setPostCategory($value);
        }

        /**
         *分类
         *@return type
         */
        public function getPostCategory() {
            return $this->db_model->getPostCategory();
        }

        public function _PostCategoryField() {
            return 'post_category';
        }
       
    
        /**
         *文章内容
         *@param type $value
         */
        public function setPostContent($value) {
            return $this->db_model->setPostContent($value);
        }

        /**
         *文章内容
         *@return type
         */
        public function getPostContent() {
            return $this->db_model->getPostContent();
        }

        public function _PostContentField() {
            return 'post_content';
        }
       
    
        /**
         *发布状态
         *@param type $value
         */
        public function setPostStatus($value) {
            return $this->db_model->setPostStatus($value);
        }

        /**
         *发布状态
         *@return type
         */
        public function getPostStatus() {
            return $this->db_model->getPostStatus();
        }

        public function _PostStatusField() {
            return 'post_status';
        }
       
    
        /**
         *评论状态
         *@param type $value
         */
        public function setPostCommentStatus($value) {
            return $this->db_model->setPostCommentStatus($value);
        }

        /**
         *评论状态
         *@return type
         */
        public function getPostCommentStatus() {
            return $this->db_model->getPostCommentStatus();
        }

        public function _PostCommentStatusField() {
            return 'post_comment_status';
        }
       
    
        /**
         *上一级页面id
         *@param type $value
         */
        public function setPostParent($value) {
            return $this->db_model->setPostParent($value);
        }

        /**
         *上一级页面id
         *@return type
         */
        public function getPostParent() {
            return $this->db_model->getPostParent();
        }

        public function _PostParentField() {
            return 'post_parent';
        }
       
    
        /**
         *文章的类型
         *@param type $value
         */
        public function setPostType($value) {
            return $this->db_model->setPostType($value);
        }

        /**
         *文章的类型
         *@return type
         */
        public function getPostType() {
            return $this->db_model->getPostType();
        }

        public function _PostTypeField() {
            return 'post_type';
        }
       
    
        /**
         *信息的mime信息
         *@param type $value
         */
        public function setPostMimeType($value) {
            return $this->db_model->setPostMimeType($value);
        }

        /**
         *信息的mime信息
         *@return type
         */
        public function getPostMimeType() {
            return $this->db_model->getPostMimeType();
        }

        public function _PostMimeTypeField() {
            return 'post_mime_type';
        }
       
    
        /**
         *点击量
         *@param type $value
         */
        public function setPostCommentCount($value) {
            return $this->db_model->setPostCommentCount($value);
        }

        /**
         *点击量
         *@return type
         */
        public function getPostCommentCount() {
            return $this->db_model->getPostCommentCount();
        }

        public function _PostCommentCountField() {
            return 'post_comment_count';
        }
       
    
        /**
         *其他附属属性
         *@param type $value
         */
        public function setPostExAttr($value) {
            return $this->db_model->setPostExAttr($value);
        }

        /**
         *其他附属属性
         *@return type
         */
        public function getPostExAttr() {
            return $this->db_model->getPostExAttr();
        }

        public function _PostExAttrField() {
            return 'post_ex_attr';
        }
       
    
        /**
         *排序字段
         *@param type $value
         */
        public function setPostOrder($value) {
            return $this->db_model->setPostOrder($value);
        }

        /**
         *排序字段
         *@return type
         */
        public function getPostOrder() {
            return $this->db_model->getPostOrder();
        }

        public function _PostOrderField() {
            return 'post_order';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey1($value) {
            return $this->db_model->setPostKey1($value);
        }

        /**
         *
         *@return type
         */
        public function getPostKey1() {
            return $this->db_model->getPostKey1();
        }

        public function _PostKey1Field() {
            return 'post_key1';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey2($value) {
            return $this->db_model->setPostKey2($value);
        }

        /**
         *
         *@return type
         */
        public function getPostKey2() {
            return $this->db_model->getPostKey2();
        }

        public function _PostKey2Field() {
            return 'post_key2';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey3($value) {
            return $this->db_model->setPostKey3($value);
        }

        /**
         *
         *@return type
         */
        public function getPostKey3() {
            return $this->db_model->getPostKey3();
        }

        public function _PostKey3Field() {
            return 'post_key3';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey4($value) {
            return $this->db_model->setPostKey4($value);
        }

        /**
         *
         *@return type
         */
        public function getPostKey4() {
            return $this->db_model->getPostKey4();
        }

        public function _PostKey4Field() {
            return 'post_key4';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey5($value) {
            return $this->db_model->setPostKey5($value);
        }

        /**
         *
         *@return type
         */
        public function getPostKey5() {
            return $this->db_model->getPostKey5();
        }

        public function _PostKey5Field() {
            return 'post_key5';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey6($value) {
            return $this->db_model->setPostKey6($value);
        }

        /**
         *
         *@return type
         */
        public function getPostKey6() {
            return $this->db_model->getPostKey6();
        }

        public function _PostKey6Field() {
            return 'post_key6';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey7($value) {
            return $this->db_model->setPostKey7($value);
        }

        /**
         *
         *@return type
         */
        public function getPostKey7() {
            return $this->db_model->getPostKey7();
        }

        public function _PostKey7Field() {
            return 'post_key7';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey8($value) {
            return $this->db_model->setPostKey8($value);
        }

        /**
         *
         *@return type
         */
        public function getPostKey8() {
            return $this->db_model->getPostKey8();
        }

        public function _PostKey8Field() {
            return 'post_key8';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey9($value) {
            return $this->db_model->setPostKey9($value);
        }

        /**
         *
         *@return type
         */
        public function getPostKey9() {
            return $this->db_model->getPostKey9();
        }

        public function _PostKey9Field() {
            return 'post_key9';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey10($value) {
            return $this->db_model->setPostKey10($value);
        }

        /**
         *
         *@return type
         */
        public function getPostKey10() {
            return $this->db_model->getPostKey10();
        }

        public function _PostKey10Field() {
            return 'post_key10';
        }
       
    
    }

endif;
