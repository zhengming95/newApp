<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_header" );?>
<div id="wrap">
    <div id="header" class="wrap">
        <div class="header">
            <table>
                <tr>
                    <td class="w1"><div class="icon_fanhui"><span>返回</span></div></td>
                    <td><div class="text">河北帅康座椅有限公司</div></td>
                    <td class="w1"></td>
                </tr>
            </table>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<script type="text/javascript">
    function ctrl_newsdetail() {
        $api.fixStatusBar(document.getElementById("header"));
        $header_h = $("#header").outerHeight(true);
        $wh = $(window).height();
        $ww = $(window).width();
        $t = ($wh - $ww) / 2 + $header_h;
        api.openFrame({
            name: 'frame_newsdetail',
            url: 'newsdetail_frame.html?theme=apicloud&post_id=' + getQueryString('post_id'),
            rect: {
                x: 0,
                y: $header_h,
                w: "auto",
                h: "auto"
            },
            pageParam: {name: 'test'},
            bounces: true,
            bgColor: 'rgba(0,0,0,0)',
            vScrollBarEnabled: true,
            hScrollBarEnabled: true
        });
    }
</script>
<?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_footer" );?> 