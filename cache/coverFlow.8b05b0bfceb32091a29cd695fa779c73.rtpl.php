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
<style type="text/css">
    body{
        background: #000;   
        color:#FFF;
    }
    * {
        display: none;
    }
</style>
<script type="text/javascript">
    function ctrl_coverFlow() {
//        $api.fixStatusBar(document.getElementById("header"));

        var obj = api.require('imageBrowser');
        obj.openImages({
            imageUrls: ['http://192.168.99.182:39010/themes/apicloud/imgage/cate1/1.jpg',
                'http://192.168.99.182:39010/themes/apicloud/imgage/cate1/1.jpg', ],
            showList: false,
            activeIndex: 0,
            bg: "rgb(255,0,0)"
        });

        return false;
        var obj = api.require('coverFlow');
        obj.close();

        var obj = api.require('coverFlow');
        obj.open({
            x: 0,
            y: $t,
            w: $ww,
            h: $wh - $header_h,
            bgColor: '#000000',
            paths: [
                'http://192.168.99.182:39010/themes/apicloud/imgage/cate1/1.jpg',
                'http://192.168.99.182:39010/themes/apicloud/imgage/cate1/1.jpg',
            ]
        }, function (ret, err) {
            var index = ret.index;
        });

        return false;

        $header_h = $("#header").outerHeight(true);
        $wh = $(window).height();
        $ww = $(window).width();

        $t = ($wh - $ww) / 2 + $header_h;

        var imgArr = new Array();
        var imgindex = 0;



        k = Math.floor(Math.random() * 2000000000);

        $(img).attr("showbigimgid", k);//防止冲突
        $(imgs).each(function (i, n) {
            if ($(n).attr("showbigimgid") == k) {
                imgindex = i;
            }
            imgArr[i] = $(n).attr("src");
        })
        var obj = api.require('coverFlow');
        obj.open({
            x: 0,
            y: $t,
            w: $ww,
            h: $wh - $header_h,
            bgColor: '#000000',
            paths: [
                'widget://html/imgage/cate1/1.jpg',
                'widget://html/imgage/cate1/2.jpg',
                'widget://html/imgage/cate1/3.jpg',
                'widget://html/imgage/cate1/4.jpg',
                'widget://html/imgage/cate1/5.jpg',
            ]
        }, function (ret, err) {
            var index = ret.index;
        });

    }
</script>
<?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_footer" );?>
