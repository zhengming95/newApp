<?php
if ($_Model->getOptionValue() != '') {
    $Site = unserialize($_Model->getOptionValue());

//     var_dump($_Model->getOptionValue());
} else {
    $Site = array();
}


$form_id = "form-" . mt_rand();
?>
<form action="<?php echo themeinfo('uri') . $args[0] . '/save/' . $args[2]; ?>" method="post" enctype="multipart/form-data" id="<?php echo $form_id; ?>" name="<?php echo $form_id; ?>">
    <table class="sl-table">   
<tr style="display: none;">
    <td class="title">排序</td>
    <td>
        <input type="hidden" class="input OptionId" name="OptionId" value="<?php echo $_Model->getOptionId(); ?>"/>
<input type="hidden" class="input OptionKey" name="OptionKey" value="<?php echo $_Model->getOptionKey(); ?>"/>
<input type="hidden" class="input Autoload" name="Autoload" value="<?php echo $_Model->getAutoload(); ?>"/>
<input type="hidden" class="input MemberId" name="MemberId" value="<?php echo $_Model->getMemberId(); ?>"/>
<input type="hidden" class="input SiteId" name="SiteId" value="<?php echo $_Model->getSiteId(); ?>"/>
<input type="hidden" class="input OptionMemo" name="OptionMemo" value="<?php echo $_Model->getOptionMemo(); ?>"/>
    </td>
     <td class="memo"></td>
</tr>
            <tr>
                <td class="title">标题</td>
                <td>
                                            <input type="text" class="input OptionValue[okey00]" name="OptionValue[okey00]" value="<?php echo $Site['okey00']; ?>"  tip="标题" reg="" style="width:260px;"  />
                                          <span class="parameters-memo">标题</span>
                </td>
                <td class="memo"></td>
            </tr>
                        <tr>
                <td class="title">关键词</td>
                <td>
                                            <textarea class="input OptionValue[okey01]" name="OptionValue[okey01]" cols="50" rows="4"  tip="" reg="" style="width:300px;" ><?php echo $Site['okey01']; ?></textarea>

                                          <span class="parameters-memo"></span>
                </td>
                <td class="memo"></td>
            </tr>
                        <tr>
                <td class="title">描述</td>
                <td>
                                            <textarea class="input OptionValue[okey02]" name="OptionValue[okey02]" cols="50" rows="4"  tip="" reg="" style="width:300px;" ><?php echo $Site['okey02']; ?></textarea>

                                          <span class="parameters-memo"></span>
                </td>
                <td class="memo"></td>
            </tr>
                        <tr>
                <td class="title">内容</td>
                <td>
                    
                        <textarea  style="width:700px;height: 320px;"  id="<?php echo $form_id; ?>Okey03" class="input OptionValue[okey03] " name="OptionValue[okey03]"  tip="" reg="" ><?php echo $Site['okey03']; ?></textarea>
                        <script type="text/javascript">
                            KindEditor.create('#<?php echo $form_id; ?>Okey03');
                        </script>
                                          <span class="parameters-memo"></span>
                </td>
                <td class="memo"></td>
            </tr>
                        <tr>
                <td class="title">小区块</td>
                <td>
                    
                        <textarea  style="width:700px;height: 320px;"  id="<?php echo $form_id; ?>Okey04" class="input OptionValue[okey04] " name="OptionValue[okey04]"  tip="首页小区块" reg="" ><?php echo $Site['okey04']; ?></textarea>
                        <script type="text/javascript">
                            KindEditor.create('#<?php echo $form_id; ?>Okey04');
                        </script>
                                          <span class="parameters-memo">首页小区块</span>
                </td>
                <td class="memo"></td>
            </tr>
             
<tr>
    <td class="title"></td>
    <td><input type="submit" class="button" value="提交"  /></td>
     <td class="memo"></td>
</tr>
</table>
</form>
<script type="text/javascript">
    $("#<?php echo $form_id; ?>").validate({
        submitHandler: function(form) {
            pid = $("#<?php echo $form_id; ?>").parent().attr("id");
            $(form).find("input[type=submit]").hide();
            $(form).ajaxSubmit({
                target: "#" + pid,
                success: function(obj) {
                    showAlert("保存成功");
                }
            });
        }
    });
</script>
<?php
require(themeinfo('path') . '/inc/footer_inner.php');
?>
