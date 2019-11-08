<?php

!defined('APPPATH') && exit();

global $search;
global $theme;
header("Content-type: text/html; charset=utf-8");

//判断单独页面
if ($args[0] != 'index') {
    $path = themeinfo('path') . $args[0] . '.php';

    if (!file_exists($path)) {
        $Ctrl = new CTRL_Posts();
        $Ctrl->setPostType('page');
        $Ctrl->setPostAlias($args[0]);
        foreach (posts_list($Ctrl, 20, 0, '') as $key => $value) {
            $Ctrl->db_model = $value;
            $model = $Ctrl->_db_toArr();
            $args[0] = 'page';
            $theme['pagetype'] = 'page';
            $theme['data'] = $model;
        }
    }

    if (!isset($theme['pagetype'])) {
        //列表 
        $Ctrl = new CTRL_Terms();
        $where = " where  term_type = 'type_post' ";
        $where .= ' and term_alias = ' . "'{$args[0]}'";
        $rs = $Ctrl->selectArrayLimit($Ctrl->tableName, " * ", $where, 1, 0);

        foreach ($rs as $key => $value) {
            // 列表展示
            $theme['pagetype'] = 'list';
            $theme['category'] = $value;

            $Ctrl = new CTRL_Posts();
            $Ctrl->setPostType($args[0]);

            $where = "";
            if (isset($search['PostId']) && $search['PostId'] != '') {
                $where .= ' and posts.post_id like ' . "'%" . $search['PostId'] . "%' ";
            }
            if (isset($search['SiteId']) && $search['SiteId'] != '') {
                $where .= ' and posts.site_id like ' . "'" . $search['SiteId'] . "' ";
            }
            if (isset($search['MemberId']) && $search['MemberId'] != '') {
                $where .= ' and posts.member_id like ' . "'" . $search['MemberId'] . "' ";
            }
            if (isset($search['PostAlias']) && $search['PostAlias'] != '') {
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
            if (isset($search['PostKey1']) && $search['PostKey1'] != '') {
                $where .= ' and posts.post_key1 like ' . "'%" . $search['PostKey1'] . "%' ";
            }
            if (isset($search['PostKey2']) && $search['PostKey2'] != '') {
                $where .= ' and posts.post_key2 like ' . "'%" . $search['PostKey2'] . "%' ";
            }
            if (isset($search['PostKey3']) && $search['PostKey3'] != '') {
                $where .= ' and posts.post_key3 like ' . "'%" . $search['PostKey3'] . "%' ";
            }
            if (isset($search['PostKey4']) && $search['PostKey4'] != '') {
                $where .= ' and posts.post_key4 like ' . "'%" . $search['PostKey4'] . "%' ";
            }
            if (isset($search['PostKey5']) && $search['PostKey5'] != '') {
                $where .= ' and posts.post_key5 like ' . "'%" . $search['PostKey5'] . "%' ";
            }
            if (isset($search['PostKey6']) && $search['PostKey6'] != '') {
                $where .= ' and posts.post_key6 like ' . "'%" . $search['PostKey6'] . "%' ";
            }
            if (isset($search['PostKey7']) && $search['PostKey7'] != '') {
                $where .= ' and posts.post_key7 like ' . "'%" . $search['PostKey7'] . "%' ";
            }
            if (isset($search['PostKey8']) && $search['PostKey8'] != '') {
                $where .= ' and posts.post_key8 like ' . "'%" . $search['PostKey8'] . "%' ";
            }
            if (isset($search['PostKey9']) && $search['PostKey9'] != '') {
                $where .= ' and posts.post_key9 like ' . "'%" . $search['PostKey9'] . "%' ";
            }
            if (isset($search['PostKey10']) && $search['PostKey10'] != '') {
                $where .= ' and posts.post_key10 like ' . "'%" . $search['PostKey10'] . "%' ";
            }

            $join = '';
            foreach ($search['Dict'] as $key => $value) {
                if ($value > 0) {
                    $key = 'dict_' . $key;
                    $join .= ' JOIN  ' . PREFIX . 'relationships as ' . $key . ' ON ' . $key . '.object_id = posts.post_id AND ' . $key . '.term_id = ' . $value . ' ';
                }
            }

            $table = $Ctrl->tableName . ' as posts ' . $join;
            $rs = $Ctrl->selectArrayLimit($table, "count(1) len", ' where posts.post_type =\'' . $Ctrl->getPostType() . '\'' . $where, 1, 0);
            if (isset($rs[0]["len"])) {
                $search['dcount'] = $rs[0]["len"];
            }
            $where .= ' order by post_id desc ';
            $ModelArr = $Ctrl->selectArrayLimit($table, " posts.* ", ' where post_type =\'' . $Ctrl->getPostType() . '\'' . $where, $search['pagelen'], $search['start']);

            $theme['data'] = $ModelArr;
        }

        //详细页面
        if (!isset($theme['pagetype']) && (int) $args[1] > 0) {
            $Ctrl = new CTRL_Posts();
            $Ctrl->setPostId((int) $args[1]);
//          $Ctrl->setPostStatus('on');
            $rs = $Ctrl->selectDB();
//          echo $Ctrl->lastsql();
            $theme['pagetype'] = 'detail';
            $theme['data'] = $rs[0];
            $Ctrl = new CTRL_Terms();
            $where = " where  term_type = 'type_post' ";
            $where .= ' and term_alias = ' . "'{$rs[0]['post_type']}'";
            $rs = $Ctrl->selectArrayLimit($Ctrl->tableName, " * ", $where, 1, 0);
            foreach ($rs as $key => $value) {
                // 列表展示
                $theme['category'] = $value;
            }
            $Ctrl = new CTRL_Terms();
            $where = " where  term_type = 'type_post' ";
            $where .= ' and term_alias = ' . "'{$rs[0]['post_type']}'";
            $rs = $Ctrl->selectArrayLimit($Ctrl->tableName, " * ", $where, 1, 0); //内容信息
            $theme['type_post'] = $rs[0]; //内容类型
        }
    }
}

$l = count($args);
if ($l > 3) {
    $l = 3;
}
$ps = array();
for ($i = 0; $i < $l; $i++) {
    $ps[$i] = $args[$i];
}
$isload = false;

for ($i = $l - 1; ($i >= 0 ) && !$isload; $i--) {
    $path = themeinfo('path') . implode('_', $ps) . '.php';
    if (file_exists($path)) {
        $isload = true;
        require $path;
    } else {
        $path = themeinfo('path') . implode('_', $ps) . '.html';
        if (file_exists($path)) {
            $isload = true;

            Controller::$tpl->assign('args', $args);

            Controller::$tpl->assign('search', $search);
            Controller::$tpl->assign('theme', $theme);
            Controller::$tpl->assign('uri', themeinfo('uri'));
            Controller::$tpl->assign('path', themeinfo('path'));
            Controller::$tpl->assign('style', themeinfo('style'));
            Controller::$tpl->assign('sys', themeinfo('sys'));

            Controller::$tpl->draw(implode('_', $ps));
        }
    }
    unset($ps[$i]);
}

if (!$isload) {
    $path = themeinfo('path') . '404.php';
    if (file_exists($path)) {
        $isload = true;
        require $path;
    } else {
        $path = themeinfo('path') . '404.html';
        if (file_exists($path)) {
            $isload = true;
            Controller::$tpl->draw('404');
        }
    }
}

//http://localhost:36699/index.php/case_detail/2444
//下一条数据
//SELECT
//	*
//FROM
//	posts
//WHERE
//	post_id > 5
//AND post_type = 'case'
//LIMIT 1