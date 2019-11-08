<?php  !defined('APPPATH') && exit();?>
<div class="clear"></div>
<script type="text/javascript">
    $("#<?php echo $form_id; ?>").validate({
        submitHandler: function(form) {
            pid = $("#<?php echo $form_id; ?>").parent().attr("id");
            $(form).ajaxSubmit({
                target: "#" + pid,
                success: function(obj) {
                    showAlert("保存成功");
                }
            });
        }
    });
    $(function() {
        $("#<?php echo $form_id; ?>multiple-parameters").sortable({
            revert: true
        });
    });
    $("#<?php echo $form_id; ?> textarea,#<?php echo $form_id; ?> input").click(
            function() {
                $(this).select();
            }
    );
    $("a.button").button();
    $("input.button").button();
    $(".upload_button").button();
</script>