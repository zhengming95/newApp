<?php !defined('APPPATH') && exit(); ?>
<div class="clear"></div>
</div>
<div id="change-pwd-wrap" >
    <table>
        <tr>
            <td></td>
            <td>
                <span class="title">输入新密码</span>
            </td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="" id="pwd" class="lerge" /></td>
            <td></td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="button" id="chgpwd" class="red button" value="修改" />
                &nbsp;
                <input type="button" id="cpwd" class="yellow button" value="取消" />                    
            </td>
            <td></td>
        </tr>
    </table>
</div>

<div id="alert_msg_area">
    <div class="alert_msg_area">
        <div class="alert_msg_content ui-state-highlight ui-corner-all">
            提示信息
        </div>
    </div>
    <div class="clear"></div>
</div>

<div id="pushmsg">
    这个主要放置服务器端推送过来的消息
</div>

<script type="text/javascript" src="<?php echo themeinfo('sys'); ?>misc/lib/swfupload/swfupload.js"></script>

<script type="text/javascript">
    $("#tabs").tabs();
    $("#wrap").hide();
    $("#alert_msg_area").hide();
    $("#pushmsg").hide();

    //文件上传函数
    function upload_file(areaId, succFun, btnId) {
        new SWFUpload({
            // Backend Settings
            upload_url: "<?php echo themeinfo('uri'); ?>upload",
            post_params: {"PHPSESSID": "<?php echo session_id(); ?>"},
            file_dialog_complete_handler: function (numFilesSelected, numFilesQueued) {
                try {
                    if (numFilesQueued > 0) {
                        this.startUpload();
                    }
                } catch (ex) {
                    this.debug(ex);
                }
            },
            upload_success_handler: succFun,
            upload_complete_handler: function (file) {
                try {
                    $("#" + btnId).parent().find(".divFileProgressContainer").hide();
                    if (this.getStats().files_queued > 0) {
                        $("#" + btnId).parent().find(".divFileProgressContainer").show();
                        this.startUpload();
                    }
                } catch (ex) {
                    this.debug(ex);
                }
            },
            upload_progress_handler: function (file, bytesLoaded) {
                try {
                    var percent = Math.ceil((bytesLoaded / file.size) * 100);

                    $("#" + btnId).parent().find(".divFileProgressContainer").progressbar({
                        value: percent
                    });

                } catch (ex) {
                    this.debug(ex);
                }
            },
            upload_error_handler: function (file, errorCode, message) {

                try {
                    switch (errorCode) {

                        case SWFUpload.UPLOAD_ERROR.UPLOAD_LIMIT_EXCEEDED:
                            alert(file + "超过文件超过服务器上传大小限制");
                            break;
                        default:
                            alert(message);
                            break;
                    }
                } catch (ex3) {
                    this.debug(ex3);
                }

            },
            file_types: "*.jpg;*.png;*.gif;*.bmp;*.rar;*.zip",
            button_placeholder_id: areaId,
            button_width: 60,
            button_height: 22,
            button_text: '<span class="button">浏览…</span>',
            button_text_style: '.button {text-align:center;font-size: 12px;}',
            button_text_top_padding: 3,
            button_text_left_padding: 0,
            button_window_mode: SWFUpload.WINDOW_MODE.TRANSPARENT,
            button_cursor: SWFUpload.CURSOR.HAND,
            // Flash Settings
            flash_url: "<?php echo themeinfo('sys'); ?>misc/lib/swfupload/swfupload.swf",
            // Debug Settings
            debug: false
        });
    }

    //接收服务器的消息 放置 session 过期
    function pushmsg() {
        jQuery.ajax({
            type: "POST",
            url: "<?php echo themeinfo('uri'); ?>pushmsg",
            dataType: "html",
            data: "ajax=jqui",
            success: function (msg) {
                jQuery("#pushmsg").html(msg);
            }
        });
    }
    jQuery(document).ready(function ($) {
        $("body,#wrap").show();


        $(".terms.data.select").live("change", function () {
            obj = this;
//            console.log(obj)

            $(this).nextAll("select").remove();
            if ($(this).val() > 0) {
                $.get("admin.php/system/service/terms/children", {term_parent_id: $(this).val(), type: "select"}, function (data) {
                    p = $(obj).parent();
                    p.append(data);
                    if (p.find("select:last option").size() < 2) {
                        p.find("select:last").hide();
                    } else {
                        last = p.find("select:last");
                        var strs = new Array(); //定义一数组
                        strs = $(obj).attr("name").split("]["); //字符分割    

                        var sname = '';
                        if (strs[1]) {
                            sname = strs[0] + "][" + $(obj).val() + "]";

                        } else {
                            strs = $(obj).attr("name").split("["); //字符分割    
                            sname = strs[0] + "[" + $(obj).val() + "]";
                        }
//                        alert(sname);
                        $(last).attr("name", sname);
                    }
                });
            }
        });
        setInterval("pushmsg()", 600000); //定时轮询服务器
    });
</script>	


<div class="clear"></div>

</body>
</html>
