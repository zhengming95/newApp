<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_header" );?>

<div id="wrap">
    <div id="header" class="wrap">
        <div class="header">
            <table>
                <tr>
                    <td class="w1"></td>
                    <td><div class="text">河北帅康座椅有限公司</div></td>
                    <td class="w1"></td>
                </tr>
            </table>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <div id="nav" class="wrap">
        <div class="nav">
            <ul>
                <li>
                    <div class="sel">
                        产品   
                    </div>
                </li>
                <li>
                    <div>
                        案例   
                    </div>
                </li>
                <li>
                    <div>
                        动态   
                    </div>
                </li>
                <li>
                    <div>
                        关于   
                    </div>
                </li>
                <li>
                    <div>
                        联系   
                    </div>
                </li>
            </ul>
            <div class="clear"></div>
        </div>
        <div class="clear"></div>
    </div>
</div>
<style type="text/css">
    .button111{
        background: #000;
        height: 30px;
    }
</style>
<script type="text/javascript">
    function ctrl_index() {
        $api.fixStatusBar(document.getElementById("header"));

        api.closeFrameGroup({
            name: 'xpjc_framegroup'
        });
        $header_h = $("#header").outerHeight(true);

        localStorage.setItem("headerwrap", $header_h);

        $nav_h = $("#nav").outerHeight(true);
        api.openFrameGroup({
            name: 'xpjc_framegroup',
            scrollEnabled: true,
            rect: {x: 0, y: $header_h + $nav_h, w: 'auto', h: 'auto'},
            index: 0,
            frames: [{
                    name: 'about0',
                    url: 'frm_product.html?theme=apicloud',
                    pageParam: {id: 'about0', index: 0},
                    bounces: true,
                    opaque: true,
                    bgColor: '#fff',
                    vScrollBarEnabled: true,
                    hScrollBarEnabled: false
                }, {
                    name: 'about1',
                    url: 'frm_case.html?theme=apicloud',
                    pageParam: {id: 'about1', index: 1},
                    bounces: true,
                    opaque: true,
                    bgColor: '#fff',
                    vScrollBarEnabled: true,
                    hScrollBarEnabled: false
                }, {
                    name: 'about2',
                    url: 'frm_news.html?theme=apicloud',
                    pageParam: {id: 'about2', index: 2},
                    bounces: true,
                    opaque: true,
                    bgColor: '#fff',
                    vScrollBarEnabled: true,
                    hScrollBarEnabled: false
                }, {
                    name: 'about3',
                    url: 'frm_about.html?theme=apicloud',
                    pageParam: {id: 'about3', index: 3},
                    bounces: true,
                    opaque: true,
                    bgColor: '#fff',
                    vScrollBarEnabled: true,
                    hScrollBarEnabled: false
                }, {
                    name: 'contact',
                    url: 'frm_contact.html?theme=apicloud',
                    pageParam: {id: 'about4', index: 4},
                    bounces: true,
                    opaque: true,
                    bgColor: '#fff',
                    vScrollBarEnabled: true,
                    hScrollBarEnabled: false
                }]
        }, function (ret, err) {
            if (ret && ret.index > -1) {
                $(".nav ul li").find(".sel").removeClass("sel");
                $(".nav ul li").eq(ret.index).find("div").addClass("sel");
            }
        });

        $(".nav ul li").on("click", function () {
            $i = $(this).index();
            api.setFrameGroupIndex({
                name: 'xpjc_framegroup',
                index: $i,
                scroll: true
            });
        })
        //绑定安卓的后退按钮事件 两秒内后退按钮点击两次 退到后台运行
        var backSecond = 0;
        api.addEventListener({
            name: 'keyback'
        }, function (ret, err) {
            var curSecond = new Date().getSeconds();
            if (Math.abs(curSecond - backSecond) > 2) {
                backSecond = curSecond;
                api.toast({
                    msg: '连续按两次到后台运行',
                    duration: 2000,
                    location: 'bottom'
                });
            } else {
                var rb = api.require('runBackground');
                rb.hideActivity();
            }
        });
    }
</script>

<?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_footer" );?>

