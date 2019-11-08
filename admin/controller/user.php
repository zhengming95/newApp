<?php
!defined('APPPATH') && exit();
/**
 * 用户信息
 */


require_cache(AUTOMODEL . '/functions/Member.php');
require_cache(BASEPATH . '/system/include/PasswordHash.class.php');
require_cache(AUTOMODEL . '/functions/Terms.php');


// require (themeinfo('path') . 'user_' .  $args[1].'.php'); //数据库操作方法s
// var_dump($args);

if ($args[1] == "changepwd") {
    $pwd = str_decode($_GET['pwd']);
    $t_hasher = new PasswordHash(8, TRUE);
    $userpassword = $t_hasher->HashPassword($pwd);
    $Ctrl = new CTRL_Member();
    $id = (int) $_SESSION["admin"]["member_id"];
    $Ctrl->execute("update member set member_password ='{$userpassword}' where member_id ='{$id}'");
    echo '密码修改成功,当前密码是：' . $pwd;
} else if ($args[1] == "list") {

    $search = array();
    if (isset($_REQUEST['search'])) {
        if (is_array($_REQUEST['search'])) {
            foreach ($_REQUEST['search'] as $key => $value) {
                $_REQUEST['search'][$key] = str_encode($value);
            }
            $search = $_REQUEST['search'];
        } else {
            $search = str_encode($_REQUEST['search']);
        }
    } else {
        $search['post_title'] = '';
        $search['page'] = '1';
        $search['pub'] = 'publish';
    }

    $Ctrl = new CTRL_Member();
    $snicename = str_encode($_GET['snicename']);
    if ($snicename != "")
        $Ctrl->setMemberNicename($snicename);

    $stype = str_encode($_GET['stype']);
    if ($stype != "")
        $Ctrl->setMemberType($stype);

    $sname = str_encode($_GET['sname']);
    if ($sname != "")
        $Ctrl->setMemberName($sname);

    $spage = (int) $_GET['spage'];
    if ($spage == 0) {
        $spage = 1;
    }
    $start = ($spage - 1 ) * PAGELEN;
    $sdcount = memberListCount($Ctrl);
    $ModelArr = memberList($Ctrl, PAGELEN, $start, " ");

    $jueseCate = null;
    $Ctrl = new CTRL_Terms();
    $Ctrl->setTermType('site_juese');
    $jueseCate = termList($Ctrl, 20, 0);
//    var_dump($jueseCate);
    require (themeinfo('path') . 'user/list.php');
} else if ($args[1] == "edit") {

    $Ctrl = new CTRL_Terms();
    $Ctrl->setTermType('site_juese');
    $jueseCate = termList($Ctrl, 20, 0);


    $Ctrl = new CTRL_Member();
    if ((int) $args[2] == 0) {
        $Ctrl->setMemberKey2(10);
        $_Model = $Ctrl;
    } else {
        $Ctrl->setMemberId((int) $args[2]);
        $rs = $Ctrl->selectDB();

        $rsdata = array();
        foreach ($rs as $value) {
            $Ctrl->_arr_toDb($value);
            $rsdata[] = clone $Ctrl->db_model; //克隆一个         
        }
        $_Model = $rsdata[0];
    }
    // var_dump($_Model);

    require (themeinfo('path') . 'user/edit.php');
} else if ($args[1] == "save") {
    $jueseCate = null;
    $Ctrl = new CTRL_Terms();
    $Ctrl->setTermType('site_juese');
    $jueseCate = termList($Ctrl, 20, 0);

    $Ctrl = new CTRL_Member();

    $addjifen = (int) ($_POST['MemberKey3']);
    if ($addjifen != 0) {
        $addjifen = $addjifen + (int) $_POST['MemberKey2'];
        $Ctrl->setMemberKey2((int) $addjifen);
    } else {
        $Ctrl->setMemberKey2(str_encode($_POST['MemberKey2']));
    }

    if ((int) $_POST['MemberId'] == 0) {
//		$Ctrl->setMemberNicename(str_encode($_POST['MemberNicename']));
//    $Ctrl->setMemberName(str_encode($_POST['MemberName']));
//		$Ctrl->setMemberType(str_encode($_POST['MemberType'])); 
//    $t_hasher = new PasswordHash(8, TRUE);
//    $userpassword = $t_hasher->HashPassword(str_encode($_POST['pwd']));
//    $Ctrl->setMemberPassword($userpassword);
//    $data = array();
//    if (is_array($_POST['MemberExAttr'])) {
//      foreach ($_POST['MemberExAttr'] as $key => $value) {
//        $_POST['MemberExAttr'][$key] = str_encode($value);
//      }
//      $data = $_POST['MemberExAttr'];
//    } else {
//      $data = str_encode($_POST['MemberExAttr']);
//    }
//    $Ctrl->setMemberExAttr(serialize($data));

        $Ctrl->setMemberName(str_encode($_POST['MemberName']));
        $Ctrl->setMemberEmail(str_encode($_POST['MemberEmail']));
        $Ctrl->setMemberKey1(str_encode($_POST['MemberKey1']));

        $Ctrl->setMemberMobile(str_encode($_POST['MemberMobile']));
        if ($_POST['pwd'] == $_POST['repwd'] && $_POST['pwd'] != "") {
            $t_hasher = new PasswordHash(8, TRUE);
            $userpassword = $t_hasher->HashPassword(str_encode($_POST['pwd']));
            $Ctrl->setMemberPassword($userpassword);
        } else {
            unset($Ctrl->db_model->member_password);
        }
        unset($Ctrl->db_model->member_id);
//    unset($Ctrl->db_model->member_mobile);
//    unset($Ctrl->db_model->member_email);
        unset($Ctrl->db_model->_key);
        unset($Ctrl->db_model->site_id);
        // var_dump($Ctrl);
        // exit;
        if ($_POST['pwd'] != "") {
            $Ctrl->insertDB();
            $Ctrl->setMemberId($Ctrl->insert_ID());
        } else {
            echo '<script type="text/javascript">alert("密码为空")</script>';
        }
        $_Model = $Ctrl;
    } else {
        $Ctrl->setMemberId(str_encode($_POST['MemberId']));
//		$Ctrl->setMemberNicename(str_encode($_POST['MemberNicename']));
//    $Ctrl->setMemberName(str_encode($_POST['MemberName']));
//		$Ctrl->setMemberType(str_encode($_POST['MemberType'])); 
//    $Ctrl->setMemberMobile(str_encode($_POST['MemberMobile']));
        // $t_hasher = new PasswordHash(8, TRUE);
        // $userpassword = $t_hasher->HashPassword(str_encode($_POST['pwd']));
        // $Ctrl->setMemberPassword($userpassword);		

        $Ctrl->setMemberName(str_encode($_POST['MemberName']));
        $Ctrl->setMemberEmail(str_encode($_POST['MemberEmail']));
        $Ctrl->setMemberKey1(str_encode($_POST['MemberKey1']));
        $Ctrl->setMemberMobile(str_encode($_POST['MemberMobile']));

//            $data = array();
//            if (is_array($_POST['MemberExAttr'])) {
//                foreach ($_POST['MemberExAttr'] as $key => $value) {
//                    $_POST['MemberExAttr'][$key] = str_encode($value);
//                }
//                $data = $_POST['MemberExAttr'];
//            } else {
//                $data = str_encode($_POST['MemberExAttr']);
//            }
//            $Ctrl->setMemberExAttr(serialize($data));

        if ($_POST['pwd'] == $_POST['repwd'] && $_POST['pwd'] != "") {
            $t_hasher = new PasswordHash(8, TRUE);
            $userpassword = $t_hasher->HashPassword(str_encode($_POST['pwd']));
            $Ctrl->setMemberPassword($userpassword);
        } else {
            unset($Ctrl->db_model->member_password);
        }
//    unset($Ctrl->db_model->member_mobile);
//    unset($Ctrl->db_model->member_email);
//    unset($Ctrl->db_model->_key);
//    unset($Ctrl->db_model->site_id);

        $sql = "";
        if ($Ctrl->getMemberPassword() != "") {

            $sql = " member_password ='{$Ctrl->getMemberPassword()}',";
        }
        $sqlcmd = "update " . PREFIX . "member set      
		{$sql}
        member_name = '" . $Ctrl->getMemberName() . "',
        member_email = '" . $Ctrl->getMemberEmail() . "',
        member_mobile = '" . $Ctrl->getMemberMobile() . "',
        member_key1 = '" . $Ctrl->getMemberKey1() . "',
        member_key2 = '" . $Ctrl->getMemberKey2() . "'
        where member_id = " . (int) $Ctrl->getMemberId();

//    echo $sqlcmd;
        $_Model = $Ctrl->execute($sqlcmd);

        $Ctrl->setMemberId(str_encode($_POST['MemberId']));
        $_Model = $Ctrl;
    }

    $addjifen = (int) ($_POST['MemberKey3']);
    if ($addjifen != 0) {
        $_date = date("Y-m-d h:i:s");
        $uname = str_encode($Ctrl->getMemberName());
        $sql = "INSERT INTO posts(post_title,member_id,post_type,post_date,post_key1,post_key2)" .
                "VALUES('管理员管理会员积分','{$Ctrl->getMemberId()}','jifen','{$_date}','{$addjifen}','{$uname}')";
//    echo $sql;;
        $Ctrl->execute($sql);
    }
    require (themeinfo('path') . 'user/edit.php'); //数据库操作方法s
} else if ($args[1] == "delete") {
    header('Location: ' . $_SERVER['HTTP_REFERER']);
    $id = (int) $_POST['member_id'];
    $Ctrl = new CTRL_Member();
    $Ctrl->setMemberId($id);
    memberDel($Ctrl);
    echo '1';
}