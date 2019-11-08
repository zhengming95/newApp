<?php  !defined('APPPATH') && exit();?>
<!DOCTYPE HTML>
<head>
    <meta charset="UTF-8" />
    <title>后台管理</title>
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <link type="text/css" href="<?php echo themeinfo('sys'); ?>misc/lib/jq-ui/themes/cupertino/jquery-ui.css" id="ui_link_css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="<?php echo themeinfo('style'); ?>css/style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="<?php echo themeinfo('sys'); ?>system/static/css/grid.css" media="all" />
    <script type="text/javascript">
        //屏蔽可忽略的js脚本错误
        window.onerror = function () {
            return true;
        };
    </script>

    <link rel="stylesheet" href="<?php echo themeinfo('sys'); ?>misc/lib/kindeditor/themes/default/default.css" />
    <script charset="utf-8" src="<?php echo themeinfo('sys'); ?>misc/lib/kindeditor/kindeditor-min.js"></script>
    <script charset="utf-8" src="<?php echo themeinfo('sys'); ?>misc/lib/kindeditor/lang/zh_CN.js"></script>


    <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>misc/jq/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>misc/jq/jquery.form.min.js"></script>
    <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>misc/jq/jquery.validate.min.js"></script>

    <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>misc/js/md5.min.js"></script>
    <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>system/static/js/xpjc.js"></script>       
    <script type="text/javascript">
        //定义组件的路径
        define("path", function (load, exports, module) {
            module.exports = "<?php echo themeinfo('style'); ?>script/";
        });
    </script>


    <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>misc/lib/jq-ui/jquery-ui.js"></script>

    <link rel="stylesheet" type="text/css" href="<?php echo themeinfo('sys'); ?>misc/lib/ztree/css/zTreeStyle/zTreeStyle.css" media="all" />
    <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>misc/lib/ztree/jquery.ztree.js"></script>

    <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>misc/js/json2.min.js"></script>

    <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>misc/lib/artdialog/artDialog.js?skin=black"></script>
    <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>misc/lib/artdialog/plugins/iframeTools.source.js"></script>
    <script type="text/javascript" src="<?php echo themeinfo('style'); ?>script/function.js"></script>
    <script type="text/javascript" src="<?php echo themeinfo('style'); ?>script/common.js"></script>

    <style type="text/css">
        #wrap {
            width: 1200px;
            margin: 0 auto;
        }
        .ui-accordion .ui-accordion-header a{
            font-size:1.2em;
        }
        .ui-button .ui-button-text{
            font-size: 1.2em;
        }
        .ui-tabs .ui-tabs-nav li a{
            font-size: 1.1em;
        }
        .header  .ui-button .ui-button-text{
            font-size: 1.05em;
        }
    </style>
</head>

<body class="ui-widget-content" style="display:none;">
    <div id="wrap">
        <div id="header" class="ui-widget-header">
            <div class="header">
                <h1>
                    <img src="<?php echo themeinfo('sytle'); ?>system/static/images/logo/JYD.png" alt="" height="66" />
                </h1>
                <?php
                if (file_exists('tools-admin.php')) {
                    ?>
                    <a class="right toadmin" href="tools-admin.php">系统管理</a>
                    <?php
                }
                ?>
                <a class="right" href="<?php echo themeinfo('uri'); ?>member/exit">退出</a>
                <a class="right" href="javascript:void(0);" id="change-pwd">修改密码</a>
                <a class="right" href="<?php echo themeinfo('uri'); ?>" >首页</a>
            </div>	  
        </div>
        <style type="text/css">
            .toadmin{
                display: block;
            }
        </style>