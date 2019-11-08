<?php 
!defined('APPPATH') && exit();
?><!DOCTYPE HTML>
<html>
    <head>
        <meta charset="UTF-8">
        <title>后台管理</title>
        <link type="text/css" href="<?php echo themeinfo('sys'); ?>misc/lib/jq-ui/themes/redmond/jquery-ui.css" rel="stylesheet"/>
        <link rel="stylesheet" type="text/css" href="<?php echo themeinfo('style'); ?>css/login.css" media="all" />
        <SCRIPT LANGUAGE="JavaScript">
            //屏蔽可忽略的js脚本错误
            function killErr() {
                return true;
            }
            window.onerror = killErr;
        </SCRIPT>
        <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>misc/jq/jquery-1.8.3.min.js"></script>
        <style type="text/css"> 
            .ui-widget-header{
                border: none;
            }
            .button.right.ui-button.ui-widget.ui-state-default.ui-corner-all.ui-button-text-only{
                padding: 0.2em 1em;
            }
            #login .area .input {
                border-radius: 6px;
            }
            .center {
                color: yellow;                 
            }
          
        </style>
    </head>
    <body class="ui-widget-header">
        <div id="wrap">
            <div id="container">
                <div id="login">
                    <form action="?login" method="post">
                        <table class="area center" style="margin: 0px auto;">
                            <tr class="column">
                                <td class="name"></td>
                                <td class="field">
                                    <?php if (isset($errormsg) && $errormsg != '') {
                                        ?>
                                        <div class="error"><?php echo $errormsg; ?></div>
                                    <?php }
                                    ?>
                                </td>
                                <td class="memo"></td>
                            </tr>
                            <tr class="column">
                                <td class="name"></td>
                                <td class="field"><input type="text" class="input UserName" name="UserName" value="用户名"/></td>
                                <td class="memo"></td>
                            </tr>

                            <tr class="column">
                                <td class="name"></td>
                                <td class="field"><input type="password" class="input UserPassword" name="UserPassword" value="password"/></td>
                                <td class="memo"></td>
                            </tr>
                            <tr class="column">
                                <td class="name"></td>
                                <td class="field center"><input type="submit" class="button right ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only" value="登  录"/></td>
                                <td class="memo"></td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>system/static/js/xpjc.js"></script>
        <script type="text/javascript" src="<?php echo themeinfo('sys'); ?>themes/admin/script/user.js"></script>
        <script type="text/javascript">
            //定义组件的路径
            define("path", function (load, exports, module) {
                module.exports = "<?php echo themeinfo('style'); ?>script/";
            });
            var UM = load('user');
            UM.login();
        </script>
    </body>
</html>