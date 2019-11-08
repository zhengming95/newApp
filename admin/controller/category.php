<?php
!defined('APPPATH') && exit();
/**
 * 分类信息
 */

require_cache(AUTOMODEL . '/functions/Terms.php');
$Ctrl = new CTRL_Terms();
$Ctrl->setTermType('category');

require (themeinfo('path') . 'category_' . $args[1] . '.php'); //数据库操作方法s

exit;
if ($args[1] == "list") {
//    $Ctrl->setPostTitle(chkstr($_GET['xpjc_PostTitle']));
    $Ctrl->setTermParentId(0);
    $ModelArr = termList($Ctrl, 20, 0);
//    var_dump($ModelArr);    
//    $Ctrl->setPostTitle(chkstr($_GET['xpjc_PostTitle']));
    $_Model = $Ctrl;

    require (themeinfo('path') . 'category_list.php'); //数据库操作方法s
} else if ($args[1] == "edit") {

    if ((int) $args[2] == 0) {
        $_Model = $Ctrl;
    } else {
        $Ctrl->setTermId((int) $args[2]);
//         var_dump($Ctrl);
        $_Model = termGetOne($Ctrl);
    }


    require (themeinfo('path') . 'category.php'); //数据库操作方法s
} else if ($args[1] == "del") {
    if ((int) $args[2] == 0) {
        ?>
        <script type="text/javascript">
            alert("请求参数错误");
            window.location.href = "/admin.php/category/list/";
        </script>
        <?php

    } else {
        $Ctrl->setTermId((int) $args[2]);

        if (!termHasChildren($Ctrl)) {
            $Ctrl->setTermId((int) $args[2]);
            termDelById($Ctrl);
            header("Location: " . BASEURL . "/category/list");
            exit;
        } else {
            ?>
            <script type="text/javascript">
                alert("该分类存在下级分类不能删除 ！！");
                window.location.href = "/admin.php/category/list/";
            </script>
            <?php

        }
    }
//    require (themeinfo('path') . 'category.php'); //数据库操作方法s
} else if ($args[1] == "save") {
    if ((int) $_POST['xpjc_TermId'] == 0) {

        $Ctrl->setTermName(chkstr($_POST['xpjc_TermName']));
        $Ctrl->setTermType(chkstr($_POST['xpjc_TermType']));
        $Ctrl->setTermParentId(chkstr($_POST['xpjc_TermParentId']));
        $Ctrl->setTermAlias(chkstr($_POST['xpjc_TermAlias']));
        $Ctrl->setTermDescription(chkstr($_POST['xpjc_TermDescription']));
        $Ctrl->setSiteId(chkstr($_POST['xpjc_SiteId']));
        $Ctrl->setTermCount(chkstr($_POST['xpjc_TermCount']));

        $_Model = termAdd($Ctrl);
    } else {

        $Ctrl->setTermId(chkstr($_POST['xpjc_TermId']));
        $Ctrl->setTermName(chkstr($_POST['xpjc_TermName']));
        $Ctrl->setTermType(chkstr($_POST['xpjc_TermType']));
        $Ctrl->setTermParentId(chkstr($_POST['xpjc_TermParentId']));
        $Ctrl->setTermAlias(chkstr($_POST['xpjc_TermAlias']));
        $Ctrl->setTermDescription(chkstr($_POST['xpjc_TermDescription']));
        $Ctrl->setSiteId(chkstr($_POST['xpjc_SiteId']));
        $Ctrl->setTermCount(chkstr($_POST['xpjc_TermCount']));

        $_Model = termEdit($Ctrl);
        $Ctrl->setTermId(chkstr($_POST['xpjc_TermId']));
        $_Model = $Ctrl;
    }
    header("Location: " . BASEURL . "/category/list");
    exit;
    require (themeinfo('path') . 'category.php'); //数据库操作方法s
}

