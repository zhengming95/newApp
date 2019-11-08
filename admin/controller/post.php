<?php

!defined('APPPATH') && exit();

/**
 * 文章信息
 */
class Post extends Controller {

    public function _list($args) {
        global $args, $search;
        $Ctrl = new CTRL_Posts();
        $Ctrl->setPostType($args[2]);
//var_dump($search);
        $where = "";
        if (isset($search['PostId']) && $search['PostId'] != '' && $search['PostId'] != '0') {
            $where .= ' and posts.post_id like ' . "'%" . $search['PostId'] . "%' ";
        }
        if (isset($search['SiteId']) && $search['SiteId'] != '' && $search['SiteId'] != '0') {
            $where .= ' and posts.site_id like ' . "'" . $search['SiteId'] . "' ";
        }
        if (isset($search['MemberId']) && $search['MemberId'] != '' && $search['MemberId'] != '0') {
            $where .= ' and posts.member_id like ' . "'" . $search['MemberId'] . "' ";
        }
        if (isset($search['PostAlias']) && $search['PostAlias'] != '' && $search['PostAlias'] != '0') {
            $where .= ' and posts.post_alias like ' . "'" . $search['PostAlias'] . "' ";
        }
        if (isset($search['PostTitle']) && $search['PostTitle'] != '') {
            $where .= ' and posts.post_title like ' . "'%" . $search['PostTitle'] . "%' ";
        }
        if (isset($search['PostDate']) && $search['PostDate'] != '') {
            $where .= ' and posts.post_date like ' . "'%" . $search['PostDate'] . "%' ";
        }
        if (isset($search['PostExcerpt']) && $search['PostExcerpt'] != '') {
            $where .= ' and posts.post_excerpt like ' . "'%" . $search['PostExcerpt'] . "%' ";
        }
        if (isset($search['PostContent']) && $search['PostContent'] != '') {
            $where .= ' and posts.post_content like ' . "'" . $search['PostContent'] . "' ";
        }
        if (isset($search['PostStatus']) && $search['PostStatus'] != '' && $search['PostStatus'] != '0') {
            $where .= ' and posts.post_status like ' . "'" . $search['PostStatus'] . "' ";
        }
        if (isset($search['PostCommentStatus']) && $search['PostCommentStatus'] != '') {
            $where .= ' and posts.post_comment_status like ' . "'" . $search['PostCommentStatus'] . "' ";
        }
        if (isset($search['PostParent']) && $search['PostParent'] != '') {
            $where .= ' and posts.post_parent like ' . "'" . $search['PostParent'] . "' ";
        }
        if (isset($search['PostType']) && $search['PostType'] != '') {
            $where .= ' and posts.post_type like ' . "'" . $search['PostType'] . "' ";
        }
        if (isset($search['PostMimeType']) && $search['PostMimeType'] != '') {
            $where .= ' and posts.post_mime_type like ' . "'" . $search['PostMimeType'] . "' ";
        }
        if (isset($search['PostCommentCount']) && $search['PostCommentCount'] != '') {
            $where .= ' and posts.post_comment_count like ' . "'" . $search['PostCommentCount'] . "' ";
        }
        if (isset($search['PostExAttr']) && $search['PostExAttr'] != '') {
            $where .= ' and posts.post_ex_attr like ' . "'%" . $search['PostExAttr'] . "%' ";
        }
        if (isset($search['PostOrder']) && $search['PostOrder'] != '') {
            $where .= ' and posts.post_order like ' . "'" . $search['PostOrder'] . "' ";
        }
        if (isset($search['PostKey1']) && $search['PostKey1'] != '' && $search['PostKey1'] != '0') {
            $where .= ' and posts.post_key1 like ' . "'%" . $search['PostKey1'] . "%' ";
        }
        if (isset($search['PostKey2']) && $search['PostKey2'] != '' && $search['PostKey2'] != '0') {
            $where .= ' and posts.post_key2 like ' . "'%" . $search['PostKey2'] . "%' ";
        }
        if (isset($search['PostKey3']) && $search['PostKey3'] != '' && $search['PostKey3'] != '0') {
            $where .= ' and posts.post_key3 like ' . "'%" . $search['PostKey3'] . "%' ";
        }
        if (isset($search['PostKey4']) && $search['PostKey4'] != '' && $search['PostKey4'] != '0') {
            $where .= ' and posts.post_key4 like ' . "'%" . $search['PostKey4'] . "%' ";
        }
        if (isset($search['PostKey5']) && $search['PostKey5'] != '' && $search['PostKey5'] != '0') {
            $where .= ' and posts.post_key5 like ' . "'%" . $search['PostKey5'] . "%' ";
        }
        if (isset($search['PostKey6']) && $search['PostKey6'] != '' && $search['PostKey6'] != '0') {
            $where .= ' and posts.post_key6 like ' . "'%" . $search['PostKey6'] . "%' ";
        }
        if (isset($search['PostKey7']) && $search['PostKey7'] != '' && $search['PostKey7'] != '0') {
            $where .= ' and posts.post_key7 like ' . "'%" . $search['PostKey7'] . "%' ";
        }
        if (isset($search['PostKey8']) && $search['PostKey8'] != '' && $search['PostKey8'] != '0') {
            $where .= ' and posts.post_key8 like ' . "'%" . $search['PostKey8'] . "%' ";
        }
        if (isset($search['PostKey9']) && $search['PostKey9'] != '' && $search['PostKey9'] != '0') {
            $where .= ' and posts.post_key9 like ' . "'%" . $search['PostKey9'] . "%' ";
        }
        if (isset($search['PostKey10']) && $search['PostKey10'] != '' && $search['PostKey10'] != '0') {
            $where .= ' and posts.post_key10 like ' . "'%" . $search['PostKey10'] . "%' ";
        }

        $join = '';

        if (isset($search['Dict'])) {
            foreach ($search['Dict'] as $key => $value) {
                if ($value > 0) {
                    $key = 'dict_' . $key;
                    $join .= ' JOIN  ' . PREFIX . 'relationships as ' . $key . ' ON ' . $key . '.object_id = posts.post_id AND ' . (int) $key . '.term_id = ' . (int) $value . ' ';
                }
            }
        }

        $table = $Ctrl->tableName . ' as posts ' . $join;
        $rs = $Ctrl->selectArrayLimit($table, "count(1) len", ' where posts.post_type =\'' . $Ctrl->getPostType() . '\'' . $where, 1, 0);
        if (isset($rs[0]["len"])) {
            $search['dcount'] = $rs[0]["len"];
        }
        $where .= ' order by post_id desc ';
        $ModelArr = $Ctrl->selectArrayLimit($table, " posts.* ", ' where post_type =\'' . $Ctrl->getPostType() . '\'' . $where, $search['pagelen'], $search['start']);
        
        if(TEST){
            return $Ctrl->lastsql();;
        }
//    echo $Ctrl->lastsql();
        if (is_file(themeinfo('admin') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php')) {
            require (themeinfo('admin') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        } else if (is_file(themeinfo('path') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php')) {
            require (themeinfo('path') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        } else {
            require (BASEPATH . '/data/' . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        }
    }

    public function _edit($args) {
        $Ctrl = new CTRL_Posts();
        $Ctrl->setPostType($args[2]);
        $args[3] = isset($args[3]) ? $args[3] : 0;
        if ((int) $args[3] == 0) {
            $_Model = $Ctrl;
            $where = ' order by post_id desc ';
            $rs = $Ctrl->selectArrayLimit($Ctrl->tableName, " posts.* ", ' where post_type =\'' . $Ctrl->getPostType() . '\'' . $where, 1, 0);
            foreach ($rs as $key => $value) {
                $Ctrl->_arr_toDb($value);
                $_Model = $Ctrl->db_model; //克隆一个      
            }

            $_Model->setPostId('');
        } else {
            $Ctrl->setPostId((int) $args[3]);
            $rs = $Ctrl->selectDB();
            foreach ($rs as $value) {
                $Ctrl->_arr_toDb($value);
                $_Model = $Ctrl->db_model; //克隆一个         
            }
        }
        $_Model = $_Model ? $_Model : $Ctrl;
        if (is_file(themeinfo('admin') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php')) {
            require (themeinfo('admin') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        } else if (is_file(themeinfo('path') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php')) {
            require (themeinfo('path') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        } else {
            require (BASEPATH . '/data/' . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        }
    }

    public function save($args) {



        $Ctrl = new CTRL_Posts();
        $Ctrl->setPostType($args[2]);
        if ((int) $_POST['PostId'] == 0) {
            $_POST['PostDate'] = date("Y-m-d H:i:s");
            $_POST['PostParent'] = 0;
            $_POST['PostContent'] = ($_POST['PostContent']);

            $_POST['MemberId'] = $_SESSION['admin']['member_id'];


            $Ctrl->set($_POST);
            $Ctrl->setPostId(djy_oid('post_' . $args[2]));

            $Ctrl->insertDB();
//        echo $Ctrl->lastsql();
            $Ctrl->setPostId($Ctrl->insert_ID());
        } else {
            $Ctrl->set($_POST);
            $Ctrl->updateDB();
        }
        $_Model = $_Model ? $_Model : $Ctrl;
        if (isset($_POST['Dict'])) {
            $id = $Ctrl->getPostId();
            foreach ($_POST['Dict'] as $key => $value) {
                $sql = "DELETE FROM " . PREFIX . "relationships WHERE " . PREFIX . "relationships.object_id = '{$id}' ";
                $sql .= "AND " . PREFIX . "relationships.term_id in (SELECT terms.term_id FROM " . PREFIX . "terms as terms WHERE terms.term_parent_id = '{$key}')";

                $Ctrl->execute($sql);
                if ($value > 0) {
                    $c = new CTRL_Relationships();
                    $c->setId(djy_oid('relationships'));
                    $c->setObjectId($id);
                    $c->setTermId($value);
                    $c->insertDB();
                }
            }
        }

        if ($Ctrl->getPostId() > 0) {
            posts_add_exattr($Ctrl->getPostId(), $_Model->getPostExAttr());
        }
//    var_dump($_Model);
        if (is_file(themeinfo('admin') . $args[0] . '/' . $args[2] . '_edit.php')) {
            require (themeinfo('admin') . $args[0] . '/' . $args[2] . '_edit.php' );
        } else if (is_file(themeinfo('path') . $args[0] . '/' . $args[2] . '_edit.php')) {
            require (themeinfo('path') . $args[0] . '/' . $args[2] . '_edit.php' );
        } else {
            require (BASEPATH . '/data/' . $args[0] . '/' . $args[2] . '_edit.php' );
        }
    }

    public function copy($args) {
        if ((int) $args[2] > 0) {
            $Ctrl = new CTRL_Posts();
            $Ctrl->setPostId((int) $args[2]);
//        $Ctrl->setPostType(str_encode($args[2]));
            $rs = $Ctrl->selectDB();
            foreach ($rs as $value) {
                $Ctrl->_arr_toDb($value);
            }
            $model = $Ctrl->db_model;
            $Ctrl = new CTRL_Posts();
            $Ctrl->db_model = $model;
            $Ctrl->setPostId(djy_oid('post_' . $args[2]));

            echo $Ctrl->insertDB();
//        echo $Ctrl->lastsql();
        } else {
            echo '2';
        }
    }

    public function del($args) {
        if (isset($args[2]) && (int) $args[2] > 0) {
            $Ctrl = new CTRL_Posts();
            $Ctrl->setPostId((int) $args[2]);
            echo $Ctrl->deleteDB();
//        echo $Ctrl->lastsql();
        } else {
            echo '2';
        }
    }

}
