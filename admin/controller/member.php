<?php

!defined('APPPATH') && exit();
header("Content-type: text/html; charset=utf-8");

class Member extends Controller {

    public function login($args) {
        if (isset($_POST['UserName'])) {
            $succ = member_login($_POST['UserName'], $_POST['UserPassword']);
            if ($succ) {
                $_G['admin'] = $succ;
                $uuid = str_encrypt_base64(md5(COOKIEKEY . md5($succ["member_name"])) . trim($succ["member_id"]));
                setcookie("uuid", $uuid, time() + 300, '/', '', false, true);
                djy_redirect(BASEURL);
            }
            $errormsg = "用户名或密码错误";
        }
        require (themeinfo('path') . 'login.php'); //数据库操作方法
    }

    public function _exit($args) {
        unset($_G['admin']);
        setcookie("uuid", "", time() - 300, '/', '', false, true);
        unset($_SESSION['admin']);
        session_destroy();
        djy_redirect(BASEURL . '/login');
    }

    public function changepwd($args) {
        if (isset($_POST['pwd'])) {
            global $_G;
            $id = (int) $_G["admin"]["member_id"];
            $Ctrl = new CTRL_Member();
            $Ctrl->setMemberPassword(str_password_mk(str_decode($_POST['pwd'])));
            $Ctrl->setMemberId($id);
            if ($Ctrl->updateDB()) {
                echo '密码修改成功,当前密码是：' . $_POST['pwd'];
            } else {
                echo '操作异常请联系管理人员';
            }
        }
    }

    public function _list($args) {
        //查询列表
        global $args, $search;
        $Ctrl = new CTRL_Member();

        $Ctrl->setMemberType($args[2]);

        $where = "";
        if (isset($search['MemberNicename']) && $search['MemberNicename'] != '') {
            $where .= ' and member.member_nicename like ' . "'%" . $search['MemberNicename'] . "%' ";
        }

        $join = '';

        $table = $Ctrl->tableName . ' as member ' . $join;
        $rs = $Ctrl->selectArrayLimit($table, "count(1) len", ' where member.member_type =\'' . $Ctrl->getMemberType() . '\'' . $where, 1, 0);
        if (isset($rs[0]["len"])) {
            $search['dcount'] = $rs[0]["len"];
        }
        $where .= ' order by member_id desc ';
        $ModelArr = $Ctrl->selectArrayLimit($table, " member.* ", ' where member.member_type =\'' . $Ctrl->getMemberType() . '\'' . $where, $search['pagelen'], $search['start']);
//        echo $Ctrl->lastsql();
        if (is_file(themeinfo('admin') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php')) {
            require (themeinfo('admin') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        } else if (is_file(themeinfo('path') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php')) {
            require (themeinfo('path') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        } else if (is_file((BASEPATH . '/data/' . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php'))) {
            require (BASEPATH . '/data/' . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        }
    }

    public function _edit($args) {
        $Ctrl = new CTRL_Member();
        $Ctrl->setMemberType($args[2]);

        if ((int) $args[3] == 0) {
            $_Model = $Ctrl;
        } else {
            $Ctrl->setMemberId((int) $args[3]);
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
        $Ctrl = new CTRL_Member();
        $Ctrl->setMemberType($args[2]);


        $errormsg = '';
        if ($_POST['reMemberPassword'] != '') {
            if ($_POST['reMemberPassword'] != $_POST['suMemberPassword']) {
                $errormsg = '两次输入密码不一样';
            } else {
                $_POST['MemberPassword'] = str_password_mk(str_encode($_POST['reMemberPassword']));
            }
        }

        $Ctrl->set($_POST);
        $checkUser = (member_checkUser($Ctrl->getMemberName()));
        if ($errormsg == '') {
            if ((int) $_POST['MemberId'] == 0) {
                if (!$checkUser) {
                    $Ctrl->setMemberId(djy_oid('member_' . $args[2]));
                    $Ctrl->insertDB();
                    $Ctrl->setMemberId($Ctrl->insert_ID());
                } else {
                    $errormsg = '用户名已经存在';
                }
            } else {
                if (is_array($checkUser)) {
                    foreach ($checkUser as $key => $value) {
                        if ($value['member_id'] != $Ctrl->getMemberId()) {
                            $errormsg = '用户名已经存在';
                        }
                    }
                }
//                var_dump($checkUser);

                if ($errormsg == '') {


                    $Ctrl->updateDB();
                }
            }
        }
        $_Model = $_Model ? $_Model : $Ctrl;
//        echo $Ctrl->lastsql();
        if (is_file(themeinfo('admin') . $args[0] . '/' . $args[2] . '_edit.php')) {
            require (themeinfo('admin') . $args[0] . '/' . $args[2] . '_edit.php' );
        } else if (is_file(themeinfo('path') . $args[0] . '/' . $args[2] . '_edit.php')) {
            require (themeinfo('path') . $args[0] . '/' . $args[2] . '_edit.php' );
        } else {
            require (BASEPATH . '/data/' . $args[0] . '/' . $args[2] . '_edit.php' );
        }
    }

    public function _del($args) {
        if (isset($args[2]) && (int) $args[2] > 0) {
            $Ctrl = new CTRL_Member();
            $Ctrl->setMemberId((int) $args[2]);
            echo $Ctrl->deleteDB();
//        echo $Ctrl->lastsql();
        } else {
            echo '2';
        }
    }

}
