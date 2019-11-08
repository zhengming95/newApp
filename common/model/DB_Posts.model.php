<?php
/**
 * Description of use table posts 信息内容表 *
 * @author autoCreate
 */
if (!class_exists('DB_Posts')):

    /**
     * 信息内容表     */
    class DB_Posts extends DB_Model {
    					 
        public $post_id = NULL; // 
            
        public $_key = 'post_id'; //主键
                					 
        public $site_id = 0; //站点标识 
                					 
        public $member_id = 0; //发布人信息 
                					 
        public $post_alias = NULL; //别名 
                					 
        public $post_title = NULL; // 
                					 
        public $post_date = NULL; //发布时间 
                					 
        public $post_keyword = NULL; //关键词 
                					 
        public $post_excerpt = NULL; //摘要 
                					 
        public $post_image = NULL; //图片 
                					 
        public $post_category = NULL; //分类 
                					 
        public $post_content = NULL; //文章内容 
                					 
        public $post_status = NULL; //发布状态 
                					 
        public $post_comment_status = NULL; //评论状态 
                					 
        public $post_parent = 0; //上一级页面id 
                					 
        public $post_type = NULL; //文章的类型 
                					 
        public $post_mime_type = NULL; //信息的mime信息 
                					 
        public $post_comment_count = 0; //点击量 
                					 
        public $post_ex_attr = NULL; //其他附属属性 
                					 
        public $post_order = 0; //排序字段 
                					 
        public $post_key1 = NULL; // 
                					 
        public $post_key2 = NULL; // 
                					 
        public $post_key3 = NULL; // 
                					 
        public $post_key4 = NULL; // 
                					 
        public $post_key5 = NULL; // 
                					 
        public $post_key6 = NULL; // 
                					 
        public $post_key7 = NULL; // 
                					 
        public $post_key8 = NULL; // 
                					 
        public $post_key9 = NULL; // 
                					 
        public $post_key10 = NULL; // 
                     
    
    
        /**
         *
         *@param type $value
         */
        public function setPostId($value) {
            return $this->post_id = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostId() {
            return $this->post_id;
        }

        public function _PostIdField() {
            return 'post_id';
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
       
    
        /**
         *发布人信息
         *@param type $value
         */
        public function setMemberId($value) {
            return $this->member_id = $value;
        }

        /**
         *发布人信息
         *@return type
         */
        public function getMemberId() {
            return $this->member_id;
        }

        public function _MemberIdField() {
            return 'member_id';
        }
       
    
        /**
         *别名
         *@param type $value
         */
        public function setPostAlias($value) {
            return $this->post_alias = $value;
        }

        /**
         *别名
         *@return type
         */
        public function getPostAlias() {
            return $this->post_alias;
        }

        public function _PostAliasField() {
            return 'post_alias';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostTitle($value) {
            return $this->post_title = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostTitle() {
            return $this->post_title;
        }

        public function _PostTitleField() {
            return 'post_title';
        }
       
    
        /**
         *发布时间
         *@param type $value
         */
        public function setPostDate($value) {
            return $this->post_date = $value;
        }

        /**
         *发布时间
         *@return type
         */
        public function getPostDate() {
            return $this->post_date;
        }

        public function _PostDateField() {
            return 'post_date';
        }
       
    
        /**
         *关键词
         *@param type $value
         */
        public function setPostKeyword($value) {
            return $this->post_keyword = $value;
        }

        /**
         *关键词
         *@return type
         */
        public function getPostKeyword() {
            return $this->post_keyword;
        }

        public function _PostKeywordField() {
            return 'post_keyword';
        }
       
    
        /**
         *摘要
         *@param type $value
         */
        public function setPostExcerpt($value) {
            return $this->post_excerpt = $value;
        }

        /**
         *摘要
         *@return type
         */
        public function getPostExcerpt() {
            return $this->post_excerpt;
        }

        public function _PostExcerptField() {
            return 'post_excerpt';
        }
       
    
        /**
         *图片
         *@param type $value
         */
        public function setPostImage($value) {
            return $this->post_image = $value;
        }

        /**
         *图片
         *@return type
         */
        public function getPostImage() {
            return $this->post_image;
        }

        public function _PostImageField() {
            return 'post_image';
        }
       
    
        /**
         *分类
         *@param type $value
         */
        public function setPostCategory($value) {
            return $this->post_category = $value;
        }

        /**
         *分类
         *@return type
         */
        public function getPostCategory() {
            return $this->post_category;
        }

        public function _PostCategoryField() {
            return 'post_category';
        }
       
    
        /**
         *文章内容
         *@param type $value
         */
        public function setPostContent($value) {
            return $this->post_content = $value;
        }

        /**
         *文章内容
         *@return type
         */
        public function getPostContent() {
            return $this->post_content;
        }

        public function _PostContentField() {
            return 'post_content';
        }
       
    
        /**
         *发布状态
         *@param type $value
         */
        public function setPostStatus($value) {
            return $this->post_status = $value;
        }

        /**
         *发布状态
         *@return type
         */
        public function getPostStatus() {
            return $this->post_status;
        }

        public function _PostStatusField() {
            return 'post_status';
        }
       
    
        /**
         *评论状态
         *@param type $value
         */
        public function setPostCommentStatus($value) {
            return $this->post_comment_status = $value;
        }

        /**
         *评论状态
         *@return type
         */
        public function getPostCommentStatus() {
            return $this->post_comment_status;
        }

        public function _PostCommentStatusField() {
            return 'post_comment_status';
        }
       
    
        /**
         *上一级页面id
         *@param type $value
         */
        public function setPostParent($value) {
            return $this->post_parent = $value;
        }

        /**
         *上一级页面id
         *@return type
         */
        public function getPostParent() {
            return $this->post_parent;
        }

        public function _PostParentField() {
            return 'post_parent';
        }
       
    
        /**
         *文章的类型
         *@param type $value
         */
        public function setPostType($value) {
            return $this->post_type = $value;
        }

        /**
         *文章的类型
         *@return type
         */
        public function getPostType() {
            return $this->post_type;
        }

        public function _PostTypeField() {
            return 'post_type';
        }
       
    
        /**
         *信息的mime信息
         *@param type $value
         */
        public function setPostMimeType($value) {
            return $this->post_mime_type = $value;
        }

        /**
         *信息的mime信息
         *@return type
         */
        public function getPostMimeType() {
            return $this->post_mime_type;
        }

        public function _PostMimeTypeField() {
            return 'post_mime_type';
        }
       
    
        /**
         *点击量
         *@param type $value
         */
        public function setPostCommentCount($value) {
            return $this->post_comment_count = $value;
        }

        /**
         *点击量
         *@return type
         */
        public function getPostCommentCount() {
            return $this->post_comment_count;
        }

        public function _PostCommentCountField() {
            return 'post_comment_count';
        }
       
    
        /**
         *其他附属属性
         *@param type $value
         */
        public function setPostExAttr($value) {
            return $this->post_ex_attr = $value;
        }

        /**
         *其他附属属性
         *@return type
         */
        public function getPostExAttr() {
            return $this->post_ex_attr;
        }

        public function _PostExAttrField() {
            return 'post_ex_attr';
        }
       
    
        /**
         *排序字段
         *@param type $value
         */
        public function setPostOrder($value) {
            return $this->post_order = $value;
        }

        /**
         *排序字段
         *@return type
         */
        public function getPostOrder() {
            return $this->post_order;
        }

        public function _PostOrderField() {
            return 'post_order';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey1($value) {
            return $this->post_key1 = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostKey1() {
            return $this->post_key1;
        }

        public function _PostKey1Field() {
            return 'post_key1';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey2($value) {
            return $this->post_key2 = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostKey2() {
            return $this->post_key2;
        }

        public function _PostKey2Field() {
            return 'post_key2';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey3($value) {
            return $this->post_key3 = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostKey3() {
            return $this->post_key3;
        }

        public function _PostKey3Field() {
            return 'post_key3';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey4($value) {
            return $this->post_key4 = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostKey4() {
            return $this->post_key4;
        }

        public function _PostKey4Field() {
            return 'post_key4';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey5($value) {
            return $this->post_key5 = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostKey5() {
            return $this->post_key5;
        }

        public function _PostKey5Field() {
            return 'post_key5';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey6($value) {
            return $this->post_key6 = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostKey6() {
            return $this->post_key6;
        }

        public function _PostKey6Field() {
            return 'post_key6';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey7($value) {
            return $this->post_key7 = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostKey7() {
            return $this->post_key7;
        }

        public function _PostKey7Field() {
            return 'post_key7';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey8($value) {
            return $this->post_key8 = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostKey8() {
            return $this->post_key8;
        }

        public function _PostKey8Field() {
            return 'post_key8';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey9($value) {
            return $this->post_key9 = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostKey9() {
            return $this->post_key9;
        }

        public function _PostKey9Field() {
            return 'post_key9';
        }
       
    
        /**
         *
         *@param type $value
         */
        public function setPostKey10($value) {
            return $this->post_key10 = $value;
        }

        /**
         *
         *@return type
         */
        public function getPostKey10() {
            return $this->post_key10;
        }

        public function _PostKey10Field() {
            return 'post_key10';
        }
       
    
    }

endif;
