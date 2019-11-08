<?php
!defined('APPPATH') && exit();
/* * 根据分类的类型 
 * 节点的id
 * 选择分类信息
 * 并执行选择函数
 * callback 
 * service=category_tree&type=category&callback=fff
 */
require_cache(AUTOMODEL . '/functions/Terms.php');
$category = str_decode($_GET['type']);
$showtype = str_decode($_GET['showtype']);
$nId = (int) $_GET['nid'];
$callbackfun = $_GET['callback'];
$cascade = $_GET['cascade']; //是否级联操作
$level = $_GET['level'];
?><!DOCTYPE HTML>
<html>
    <head>
        <meta charset="UTF-8">
        <title>分类选择</title>
        <link rel="stylesheet" type="text/css" href="<?php echo STATICURL; ?>/system/static/lib/tree/css/zTreeStyle/zTreeStyle.css" media="all" />
        <script type="text/javascript" src="<?php echo STATICURL; ?>/system/static/lib/jquery.js"></script>
        <script type="text/javascript" src="<?php echo STATICURL; ?>/system/static/lib/tree/jquery.ztree.js"></script>
        <SCRIPT type="text/javascript">
            <!--
            var setting = {
                check: {
                    enable: true
<?php
if ($cascade == 'false') {
    echo ' ,chkboxType: {"Y":"", "N":""}';
}
if ($showtype != "") {
    echo ' ,chkStyle: "' . $showtype . '"';
}
?>
                },
                view: {
                    dblClickExpand: false
                },
                data: {
                    simpleData: {
                        enable: true
                    }
                },
                callback: {
                    beforeClick: beforeClick,
                    onCheck: onCheck
                }
            };
            var zNodes = [
<?php
//$selectArr = array();
//if($nId > 0){    
//    getCategoryByPostId($nId ,$category);
//}



$Ctrl = new CTRL_Terms();
$Ctrl->setTermType($category);
$Ctrl->setTermParentId("0");
$ModelArr = termList($Ctrl, 50, 0, "order by term_order desc");
$redata = array();
foreach ($ModelArr as $key => $value) {
    $data['id'] = $value->getTermId();
    $data['pId'] = $value->getTermParentId();
    $data['name'] = $value->getTermName();
    $data['isParent'] = true;
    echo '{id:' . $value->getTermId() . ', pId:' . $value->getTermParentId() . ', name:"' . $value->getTermName() . '", open:false},';

    $Ctrl = new CTRL_Terms();
    $Ctrl->setTermType($category);
    $Ctrl->setTermParentId($value->getTermId());
    $ModelArr1 = termList($Ctrl, 50, 0, "order by term_order desc");
    foreach ($ModelArr1 as $key1 => $value1) {
        echo '{id:' . $value1->getTermId() . ', pId:' . $value1->getTermParentId() . ', name:"' . $value1->getTermName() . '", open:true},';
    }
}
?>
            ];

            function beforeClick(treeId, treeNode) {
                var zTree = $.fn.zTree.getZTreeObj("category_tree");
                zTree.checkNode(treeNode, !treeNode.checked, null, true);
                return false;
            }

            function onCheck(e, treeId, treeNode) {
                var zTree = $.fn.zTree.getZTreeObj("category_tree");
                nodes = zTree.getCheckedNodes(true);
                var p = parent.window;
                parent.window.<?php echo $callbackfun; ?>(nodes);
            }

            $(document).ready(function () {
                $.fn.zTree.init($("#category_tree"), setting, zNodes);
            });
//-->
        </SCRIPT>
        <style type="text/css">
        </style>
    </HEAD>

    <BODY>
        <div id="menuContent" class="menuContent">
            <ul id="category_tree" class="ztree" style="margin-top:0; width:180px; height: 300px;"></ul>
        </div>
    </BODY>
</HTML>