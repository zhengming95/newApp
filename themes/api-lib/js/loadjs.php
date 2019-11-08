<?php
@ini_set("display_errors", "Off");
@error_reporting(0);

header("Content-type: text/javascript; charset=utf-8");

echo ';';
include 'lib/api.js';
echo ';';
include 'lib/jquery-2.1.0.min.js';
echo ';';
include 'lib/jquery.json-2.4.min.js';
echo ';';
include 'lib/jquery.tap.js';
echo ';';
include 'lib/jquery.lazyload.min.js';
echo ';';
include 'lib/jquery.tmpl.min.js';
echo ';';
include 'lib/iscroll.js';
echo ';';
include 'lib/md5.js';
echo ';';
//include 'lib/template.js';
echo ';';
include 'lib/fastclick.js';
echo ';';
include 'app/config.js';
echo ';';
?>
var AppDomain = '<?php echo $_SERVER["HTTP_HOST"]; ?>';
var AppCtrlUrl = '/index.php/';
<?php
echo ';';
include 'app/functions.js';
echo ';';
include 'app/controler.js';
echo ';';
ob_start();
?>
<script type="text/javascript">
    var initappready = false;
    jQuery(document).ready(function ($) {
        url = window.location.pathname;
        var arrUrl = url.split("/");
        var strPage = arrUrl[arrUrl.length - 1];
        strPage = strPage.split(".");
        url = strPage[0];
        if (url == "") {
            url = "index";
        }
        apiready = function () {
            if (initappready == false) {
                initappready = true;
                try {
                    if (typeof (eval("ctrl_" + url)) == "function") {  //判断函数是否存在
                        eval("ctrl_" + url + "()");
                    }
                } catch (e) {
                }
            }
        };
        jQuery('body').on('tap click', '.applink', function (e) {
            str = $(this).attr("applink");
            if (str.indexOf("theme=apicloud") == -1) {
                var iscontaintest = str.indexOf("?") == -1 ? false : true;
                if (iscontaintest) {
                    str += '&theme=apicloud';
                } else {
                    str += '?theme=apicloud';
                }
            }
//            window.location.href = str;
            initappready && api.openWin({
                name: str,
                url: str,
                rect: {
                    x: 0,
                    y: 0,
                    w: 'auto',
                    h: 'auto'
                },
                bounces: false,
            });
            e.preventDefault();
            e.stopPropagation();
            return false;
        });
        jQuery('body').on('tap click', '.icon_fanhui', function (e) {
            initappready && api.closeWin();
            e.preventDefault();
            e.stopPropagation();
            return false;
        });
    });
</script>
<?php
$odata = ob_get_contents();
ob_end_clean();

$odata = str_replace('<script type="text/javascript">', '', $odata);
$odata = str_replace('</script>', '', $odata);
echo $odata;
