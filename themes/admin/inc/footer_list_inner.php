<?php  !defined('APPPATH') && exit();?>
<div class="clear"></div>
<script type="text/javascript">

//    $("#<?php echo $form_id; ?> input.tofile").remove();
    $("#<?php echo $form_id; ?> input.tomenu").remove();


    $("a.button").button();
    $("input.button").button();
    $(".upload_button").button();
    //翻页功能
//    $("#<?php echo $form_id; ?> .pagenum").val(0);
    $("#<?php echo $form_id; ?> div.page a").button();
    $("#<?php echo $form_id; ?> div.page a").bind("click", function() {
        pid = $("#<?php echo $form_id; ?>").parent().attr("id");
        $("#<?php echo $form_id; ?> .pagenum").val($(this).attr("page"));
        $("#<?php echo $form_id; ?>").ajaxSubmit({
            target: "#" + pid,
            success: function(obj) {

            }
        });
        return false;
    });

    $("#<?php echo $form_id; ?>").validate({
        submitHandler: function(form) {
            pid = $("#<?php echo $form_id; ?>").parent().attr("id");
            $(form).ajaxSubmit({target: "#" + pid,
                success: function(obj) {
                    showAlert("列表刷新");
                }
            });
        }
    });
    //全选按钮
    flag = false;
    $("#<?php echo $form_id; ?> th.list_sel_all,#<?php echo $form_id; ?> input.list_sel_all").click(
            function() {
                flag = !flag;
                $("#<?php echo $form_id; ?> .list-content input[type=checkbox]").attr("checked", flag);
            }
    );

    //复制功能
    selnum = 0;
    $("#<?php echo $form_id; ?>tocopy").click(
            function() {
                selnum = $("#<?php echo $form_id; ?> .list-content input:checked").length;
                $("#<?php echo $form_id; ?> .list-content input:checked").each(function(i, n) {
                    $.ajax({
                        type: "POST",
                        url: "<?php echo themeinfo('uri') . $args[0] . '/copy/'; ?>" + $(n).val(),
                        data: "ajax=1",
                        success: function(msg) {

                            if (msg == 1) {
                                showAlert("生成成功");
                            } else {
                                alert("删除错误，状态码为" + msg)
                            }
                            selnum--;
                            if (selnum == 0) {
//                                alert("dddddd")
                                pid = $("#<?php echo $form_id; ?>").parent().attr("id");
                                $("#<?php echo $form_id; ?>").ajaxSubmit({
                                    target: "#" + pid,
                                    success: function(obj) {
//                                        showAlert("删除成功");
                                    }
                                });
                            }
                        }
                    });
                });
            }
    );
    $("#<?php echo $form_id; ?> .delete ").click(function() {
        $.ajax({
            type: "POST",
            url: "<?php echo themeinfo('uri') . $args[0] . '/del/'; ?>" + $(this).attr("post_id"),
            data: "ajax=1",
            success: function(msg) {
                if (msg == 1) {
                    showAlert("删除成功");
                } else {
                    alert("删除错误，状态码为" + msg)
                }

                pid = $("#<?php echo $form_id; ?>").parent().attr("id");
                $("#<?php echo $form_id; ?>").ajaxSubmit({
                    target: "#" + pid,
                    success: function(obj) {
//                                        showAlert("删除成功");
                    }
                });

            }
        });
        return false;
    });

//批量删除功能
    selnum = 0;
    $("#<?php echo $form_id; ?>todelete").click(
            function() {
                selnum = $("#<?php echo $form_id; ?> .list-content input:checked").length;
                $("#<?php echo $form_id; ?> .list-content input:checked").each(function(i, n) {
                    $.ajax({
                        type: "POST",
                        url: "<?php echo themeinfo('uri') . $args[0] . '/del/'; ?>" + $(n).val(),
                        data: "ajax=1",
                        success: function(msg) {
                            if (msg == 1) {
                                showAlert("删除成功");
                            } else {
                                alert("删除错误，状态码为" + msg)
                            }
                            selnum--;
                            if (selnum == 0) {
//                                alert("dddddd")
                                pid = $("#<?php echo $form_id; ?>").parent().attr("id");
                                $("#<?php echo $form_id; ?>").ajaxSubmit({
                                    target: "#" + pid,
                                    success: function(obj) {
//                                        showAlert("删除成功");
                                    }
                                });
                            }
                        }
                    });
                });
            }
    );


//    // 删除功能
//    $("#<?php echo $form_id; ?> a.delete").bind("click", function() {
//        var obj = this;
//        if (confirm('确定要删除该记录？')) {
//            pid = $("#<?php echo $form_id; ?>").parent().attr("id");
//            $.ajax({
//                type: "POST",
//                url: "<?php echo themeinfo('uri') . $args[0] . '/delete/'; ?>" + $(n).val(),    
//                data: "ajax=1",
//                success: function(msg) {
//                    if (msg == 1) {
//                        $("#<?php echo $form_id; ?>").ajaxSubmit({
//                            target: "#" + pid,
//                            success: function(obj) {
//                                showAlert("删除成功");
//                            }
//                        });
//                    } else {
//                        alert("删除错误，状态码为" + msg)
//                    }
//                }
//            });
//        }
//        return false;
//    });

    // 生成文件
    selnum = 0;
    $("#<?php echo $form_id; ?>tofile").click(
            function() {
                selnum = $("#<?php echo $form_id; ?> .list-content input:checked").length;
                $("#<?php echo $form_id; ?> .list-content input:checked").each(function(i, n) {
                    $.ajax({
                        type: "POST",
                        url: "<?php echo themeinfo('uri') . $args[0] . '/tofile/'; ?>" + $(n).val() + "<?php echo '?type=' . $term_type; ?>",
                        data: "ajax=1",
                        success: function(msg) {
                            if (msg == 1) {
                                showAlert("生成成功");
                            } else {
                                alert("删除错误，状态码为" + msg)
                            }
                            selnum--;
                            if (selnum == 0) {
//                                alert("dddddd")
                                pid = $("#<?php echo $form_id; ?>").parent().attr("id");
                                $("#<?php echo $form_id; ?>").ajaxSubmit({
                                    target: "#" + pid,
                                    success: function(obj) {
//                                        showAlert("删除成功");
                                    }
                                });
                            }
                        }
                    });
                });
            }
    );

    selnum = 0;
    $("#<?php echo $form_id; ?>tomenu").click(
            function() {
                ids = '';
                $("#<?php echo $form_id; ?> .list-content input:checked").each(function(i, n) {
                    ids += "," + $(n).val();
                });

                $.ajax({
                    type: "POST",
                    url: "<?php echo themeinfo('uri') . 'post/tomenu/post/'; ?>" + ids,
                    data: "ajax=1",
                    success: function(msg) {
                        if (msg == 1) {
                            showAlert("生成成功");
                        } else {
                            alert("删除错误，状态码为" + msg)
                        }

                        $("#<?php echo $form_id; ?>").ajaxSubmit({
                            target: "#" + pid,
                            success: function(obj) {
//                                        showAlert("删除成功");
                            }
                        });

                    }
                });
            }
    );
</script>