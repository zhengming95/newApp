<?php !defined("APPPATH") && exit();?><?php
require(dirname(__FILE__) . '/' . $args[2] . '_var.php');
$postExAttr = unserialize($_Model->getPostExAttr());
$form_id = "form-" . mt_rand();
$editors = "";
$Dict = terms_get_post_category($_Model->getPostId());
?>
<form action="<?php echo themeinfo('uri') . $args[0] . '/save/' . $args[2]; ?>" 
      method="post" 
      enctype="multipart/form-data" 
      id="<?php echo $form_id; ?>" 
      name="<?php echo $form_id; ?>" 
      class="editform <?php echo $args[2]; ?>_editform">   
    <table class="sl-table">   
<tr style="display: none;">
    <td class="title"></td>
    <td>
        <input type="hidden" name="PostId" value="<?php echo $_Model->getPostId(); ?>"/>
<input type="hidden" name="SiteId" value="<?php echo $_Model->getSiteId(); ?>"/>
<input type="hidden" name="MemberId" value="<?php echo $_Model->getMemberId(); ?>"/>
<input type="hidden" name="PostAlias" value="<?php echo $_Model->getPostAlias(); ?>"/>
<input type="hidden" name="PostDate" value="<?php echo $_Model->getPostDate(); ?>"/>
<input type="hidden" name="PostCategory" value="<?php echo $_Model->getPostCategory(); ?>"/>
<input type="hidden" name="PostStatus" value="<?php echo $_Model->getPostStatus(); ?>"/>
<input type="hidden" name="PostCommentStatus" value="<?php echo $_Model->getPostCommentStatus(); ?>"/>
<input type="hidden" name="PostParent" value="<?php echo $_Model->getPostParent(); ?>"/>
<input type="hidden" name="PostType" value="product"/>
<input type="hidden" name="PostMimeType" value="<?php echo $_Model->getPostMimeType(); ?>"/>
<input type="hidden" name="PostCommentCount" value="<?php echo $_Model->getPostCommentCount(); ?>"/>
                                                                                <input type="hidden" name="PostKey3" value="<?php echo $_Model->getPostKey3(); ?>"/>
<input type="hidden" name="PostKey4" value="<?php echo $_Model->getPostKey4(); ?>"/>
<input type="hidden" name="PostKey5" value="<?php echo $_Model->getPostKey5(); ?>"/>
<input type="hidden" name="PostKey6" value="<?php echo $_Model->getPostKey6(); ?>"/>
<input type="hidden" name="PostKey7" value="<?php echo $_Model->getPostKey7(); ?>"/>
<input type="hidden" name="PostKey8" value="<?php echo $_Model->getPostKey8(); ?>"/>
<input type="hidden" name="PostKey9" value="<?php echo $_Model->getPostKey9(); ?>"/>
<input type="hidden" name="PostKey10" value="<?php echo $_Model->getPostKey10(); ?>"/>
    </td>
</tr>
        <tr class="column post_title">
            <td class="name">标题</td>
            <td class="field">
                
                                    <input type="text" tip="" reg="" style="width:150px" class="input PostTitle" name="PostTitle" value="<?php echo $_Model->getPostTitle(); ?>"/>
                                        <span class="parameters-memo"></span>
            </td>
            <td class="memo"></td>
        </tr>
                <tr class="column post_keyword">
            <td class="name">关键词</td>
            <td class="field">
                
                                    <textarea  tip="" reg="" style="width:300px"  class="input PostKeyword" name="PostKeyword" cols="50" rows="4"><?php echo $_Model->getPostKeyword(); ?></textarea>

                                        <span class="parameters-memo"></span>
            </td>
            <td class="memo"></td>
        </tr>
                <tr class="column post_excerpt">
            <td class="name">简介</td>
            <td class="field">
                
                                    <textarea  tip="" reg="" style="width:300px"  class="input PostExcerpt" name="PostExcerpt" cols="50" rows="4"><?php echo $_Model->getPostExcerpt(); ?></textarea>

                                        <span class="parameters-memo"></span>
            </td>
            <td class="memo"></td>
        </tr>
                <tr class="column post_image">
            <td class="name">图片</td>
            <td class="field">
                
                                    <img class="PostImageimg" src="<?php echo $_Model->getPostImage(); ?>"   height="80"  tip="" reg="" style="" />
                    <div class="divFileProgressContainer"></div>
                    <span class="spanButtonPlaceholder button ui-button ui-widget ui-state-default ui-corner-all">
                        <span id="<?php echo $form_id; ?>PostImageButtonPlaceholder">
                        </span>
                    </span>

                    <input type="hidden" class="PostImageinput" name="PostImage" value="<?php echo $_Model->getPostImage(); ?>" />          

                    <script type="text/javascript">
                        var srcimg = $("#<?php echo $form_id; ?> .PostImageimg").attr("src");
                        if (srcimg == "") {
                            $("#<?php echo $form_id; ?> .PostImageimg").hide();
                        }

                        function succFun(file, server_data, receivedResponse) {
                            if (server_data == 'xpjc001') {
                                alert("上传文件类型不正确");
                                return false;
                            }
                            $("#<?php echo $form_id; ?> .PostImageinput").val(server_data);
                            $("#<?php echo $form_id; ?> .PostImageimg").attr("src", server_data);
                            $("#<?php echo $form_id; ?> .PostImageimg").show();
                            // $(".spanButtonPlaceholder").parent().append('<img height="30" src="' + server_data + '" alt="" />');
                        }
                        upload_file("<?php echo $form_id; ?>PostImageButtonPlaceholder", succFun);
                    </script>

                                        <span class="parameters-memo"></span>
            </td>
            <td class="memo"></td>
        </tr>
                <tr class="column post_content">
            <td class="name">内容</td>
            <td class="field">
                
                
                    <textarea  style="width:700px;height: 320px;"  id="<?php echo $form_id; ?>PostContent" class="input PostContent " name="PostContent"   tip="" reg=""  ><?php echo $_Model->getPostContent(); ?></textarea>
                    <script type="text/javascript">
                        KindEditor.create('#<?php echo $form_id; ?>PostContent');
                    </script>

                                        <span class="parameters-memo"></span>
            </td>
            <td class="memo"></td>
        </tr>
                <tr class="column post_key1">
            <td class="name">图片1</td>
            <td class="field">
                
                                    <img class="PostKey1img" src="<?php echo $_Model->getPostKey1(); ?>"   height="80"  tip="" reg="" style="" />
                    <div class="divFileProgressContainer"></div>
                    <span class="spanButtonPlaceholder button ui-button ui-widget ui-state-default ui-corner-all">
                        <span id="<?php echo $form_id; ?>PostKey1ButtonPlaceholder">
                        </span>
                    </span>

                    <input type="hidden" class="PostKey1input" name="PostKey1" value="<?php echo $_Model->getPostKey1(); ?>" />          

                    <script type="text/javascript">
                        var srcimg = $("#<?php echo $form_id; ?> .PostKey1img").attr("src");
                        if (srcimg == "") {
                            $("#<?php echo $form_id; ?> .PostKey1img").hide();
                        }

                        function succFun(file, server_data, receivedResponse) {
                            if (server_data == 'xpjc001') {
                                alert("上传文件类型不正确");
                                return false;
                            }
                            $("#<?php echo $form_id; ?> .PostKey1input").val(server_data);
                            $("#<?php echo $form_id; ?> .PostKey1img").attr("src", server_data);
                            $("#<?php echo $form_id; ?> .PostKey1img").show();
                            // $(".spanButtonPlaceholder").parent().append('<img height="30" src="' + server_data + '" alt="" />');
                        }
                        upload_file("<?php echo $form_id; ?>PostKey1ButtonPlaceholder", succFun);
                    </script>

                                        <span class="parameters-memo"></span>
            </td>
            <td class="memo"></td>
        </tr>
                <tr class="column post_key2">
            <td class="name">图片2</td>
            <td class="field">
                
                                    <img class="PostKey2img" src="<?php echo $_Model->getPostKey2(); ?>"   height="80"  tip="" reg="" style="" />
                    <div class="divFileProgressContainer"></div>
                    <span class="spanButtonPlaceholder button ui-button ui-widget ui-state-default ui-corner-all">
                        <span id="<?php echo $form_id; ?>PostKey2ButtonPlaceholder">
                        </span>
                    </span>

                    <input type="hidden" class="PostKey2input" name="PostKey2" value="<?php echo $_Model->getPostKey2(); ?>" />          

                    <script type="text/javascript">
                        var srcimg = $("#<?php echo $form_id; ?> .PostKey2img").attr("src");
                        if (srcimg == "") {
                            $("#<?php echo $form_id; ?> .PostKey2img").hide();
                        }

                        function succFun(file, server_data, receivedResponse) {
                            if (server_data == 'xpjc001') {
                                alert("上传文件类型不正确");
                                return false;
                            }
                            $("#<?php echo $form_id; ?> .PostKey2input").val(server_data);
                            $("#<?php echo $form_id; ?> .PostKey2img").attr("src", server_data);
                            $("#<?php echo $form_id; ?> .PostKey2img").show();
                            // $(".spanButtonPlaceholder").parent().append('<img height="30" src="' + server_data + '" alt="" />');
                        }
                        upload_file("<?php echo $form_id; ?>PostKey2ButtonPlaceholder", succFun);
                    </script>

                                        <span class="parameters-memo"></span>
            </td>
            <td class="memo"></td>
        </tr>
        <tr>
    <td class="title">排序</td>
    <td>
        <label >
            <select name="PostOrder">
                <?php
                $order = (int) $_Model->getPostOrder();
                $order = ($order == 0 ? 8 : $order);
                for ($i = 1; $i < 16; $i++) {
                    ?>
                    <option value="<?php echo $i; ?>" <?php echo $i == $order ? "selected" : ""; ?>><?php echo $i; ?></option>
                    <?php
                }
                ?>
            </select>
        </label> 
        <span>分值越大越靠前</span>
    </td>
</tr>
<tr>
    <td class="title"></td>
    <td><input type="submit" class="button" value="提交"  /></td>
</tr>
</table>
</form>

<?php
require(themeinfo('path') . '/inc/footer_inner.php');
?>
