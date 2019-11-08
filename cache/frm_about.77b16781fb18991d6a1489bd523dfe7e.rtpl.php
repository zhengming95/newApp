<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_header" );?>

<div id="wrap">
    <div id="container" class="wrap"> 
        <div class="container content">

        </div>
    </div>
</div>

<script id="newslist" type="text/x-jquery-tmpl">
    {{each data}}
    <h1 class="newtitle prdtitle">{{= $value.post_title}}</h1>
    <div> 
    <div class="dnews_content">
    {{= $value.post_content}}

    </div>
    </div> 
    {{/each}}
</script>
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
    h1{
        font-size: 20px;
    }
</style>
<script type="text/javascript">
    function ctrl_frm_about() {
        reqdata = new Object();
        reqdata.url = 'app';
        reqdata.req = 'detail';
        reqdata.post_id = '1025';
//        reqdata.search = searchAttrAll();
        controler(reqdata, function (_json) {
            console.log(_json);
            $("#newslist").tmpl(_json).appendTo('.container');
        });
    }
</script>

<?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_footer" );?>
