<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_header" );?>
<div id="wrap">
    <div id="container" class="wrap"> 
        <div class="container content">
            <ul> 
            </ul>
            <?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_searchstate" );?>
        </div>
    </div>
</div>
<style type="text/css">
    .content{
        font-size: 16px;
        padding-left:  10px;
        padding-right:  10px;
        line-height: 2;
    }
    .prdimg{
        border: 3px #cdcdcd solid;
        border-radius: 5px;
        padding: 0px;
        background: #cdcdcd;
    }
    .prdimg img{
        width: 100%;
        display: block;
        border-radius: 5px;
    }
    ul li {
        padding: 0px;

    }
    .prdtitle{
        text-align: center;    
        margin-bottom: 10px;
    }
    .container li{
        border-bottom: 1px solid threedshadow;
        padding-top:10px;
        padding-bottom: 10px;
    }
    .time{
        width: 80px;
        overflow: hidden;
    }
</style>

<script id="newslist" type="text/x-jquery-tmpl">
    {{each data}}
    <li post_id="{{= $value.post_id}}"><span class="time">{{= $value.post_date}}</span><span>{{= $value.post_title}}</span></li>   
    {{/each}}
</script>

<script type="text/javascript">

    function loaddata() {
        showloading();
        reqdata = new Object();
        reqdata.url = 'app';
        reqdata.req = 'list';
        reqdata.post_type = 'news';
        reqdata.search = searchAttrAll();
        controler(reqdata, function (_json) {
            console.log(_json);
            $("#newslist").tmpl(_json).appendTo('.container > ul');

            page = parseInt(_json.search.page);
            pagelen = parseInt(_json.search.pagelen);
            dcount = parseInt(_json.search.dcount);
            if (dcount < page * pagelen) {
                searchattr("over", 1)
            } else {
                page = 1 + page;
                searchattr("page", page)
                scrollpage(); //加载更对功能
            }
        }, function () {

        })
    }

    loaddata();


    function ctrl_frm_news() {
        $("body").on("tap click", ".container li", function () {
            api.openWin({
                name: 'newsdetail',
                url: 'newsdetail.html?post_id=' + $(this).attr("post_id") + "&theme=apicloud",
                pageParam: {name: 'coverFlowtest'}
                , delay:200,
                reload:true,
            });
            e.preventDefault();
            e.stopPropagation();
            return false;
        })
    }


</script>
<?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_footer" );?>
