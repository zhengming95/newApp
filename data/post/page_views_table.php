<?php !defined("APPPATH") && exit();?><?php require(dirname(__FILE__)."/page_var.php"); ?><?php $Dict = terms_get_post_category($Model->getPostId()); ?>
<table class="sl-table">  
                <?php if( $Model->getPostAlias() != ""){ ?>            <tr class="column post_alias">
                <td class="name">别名</td>
                <td class="field" colspan="5">
                                            <?php echo str_decode( $Model->getPostAlias()); ?>                      
                                        </td>

            </tr>
            <?php } ?>                        <?php if( $Model->getPostTitle() != ""){ ?>            <tr class="column post_title">
                <td class="name">标题</td>
                <td class="field" colspan="5">
                                            <?php echo str_decode( $Model->getPostTitle()); ?>                      
                                        </td>

            </tr>
            <?php } ?>                        <?php if( $Model->getPostKeyword() != ""){ ?>            <tr class="column post_keyword">
                <td class="name">关键词</td>
                <td class="field" colspan="5">
                                            <?php echo str_decode( $Model->getPostKeyword()); ?>                      
                                        </td>

            </tr>
            <?php } ?>                        <?php if( $Model->getPostExcerpt() != ""){ ?>            <tr class="column post_excerpt">
                <td class="name">简介</td>
                <td class="field" colspan="5">
                                            <?php echo str_decode( $Model->getPostExcerpt()); ?>                      
                                        </td>

            </tr>
            <?php } ?>                        <?php if( $Model->getPostImage() != ""){ ?>            <tr class="column post_image">
                <td class="name">图片</td>
                <td class="field" colspan="5">
                                            <img class="PostImageimg" src="<?php echo $Model->getPostImage(); ?>"   height="80"/>
                                        </td>

            </tr>
            <?php } ?>                        <?php if( $Model->getPostContent() != ""){ ?>            <tr class="column post_content">
                <td class="name">内容</td>
                <td class="field" colspan="5">
                                            <?php echo str_decode( $Model->getPostContent()); ?>                      
                                        </td>

            </tr>
            <?php } ?>                        <?php if( $Model->getPostKey1() != ""){ ?>            <tr class="column post_key1">
                <td class="name">图片1</td>
                <td class="field" colspan="5">
                                            <img class="PostKey1img" src="<?php echo $Model->getPostKey1(); ?>"   height="80"/>
                                        </td>

            </tr>
            <?php } ?>                        <?php if( $Model->getPostKey2() != ""){ ?>            <tr class="column post_key2">
                <td class="name">图片2</td>
                <td class="field" colspan="5">
                                            <img class="PostKey2img" src="<?php echo $Model->getPostKey2(); ?>"   height="80"/>
                                        </td>

            </tr>
            <?php } ?>            </table>