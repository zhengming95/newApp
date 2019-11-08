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


<script id="prdlist" type="text/x-jquery-tmpl">
    
     
    {{each data}}
    <h1 class="newtitle prdtitle">{{= $value.post_title}}</h1>
    <div> 
    
    <!-- Swiper -->
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="{{= $value.post_image}}" alt="" /></div>
            <div class="swiper-slide"><img src="{{= $value.post_key1}}" alt="" /></div>
            <div class="swiper-slide"><img src="{{= $value.post_key2}}" alt="" /></div>             
        </div>
        <div class="swiper-pagination"></div>
    </div>
    <div class="dnews_content">
    {{= $value.post_content}}
    </div>
    </div> 
    {{/each}}
</script>

<link rel="stylesheet" href="http://192.168.99.182:39010/themes/apicloud/Swiper-master/dist/css/swiper.min.css">
<style>

    .swiper-container {
 
        margin: 20px auto;
    }
    .swiper-container img{
        max-width: 100%;
    }
    .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
    }
</style>

<!-- Swiper JS -->
<script src="http://192.168.99.182:39010/themes/apicloud/Swiper-master/dist/js/swiper.min.js"></script>
<!-- Initialize Swiper -->
 

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
    reqdata = new Object();
    reqdata.url = 'app';
    reqdata.req = 'detail';
    reqdata.post_id = getQueryString('post_id');
    controler(reqdata, function (_json) {
        if (_json.data[0].post_type == "news") {
            $("#newslist").tmpl(_json).appendTo('.container');
        } else {
            $("#prdlist").tmpl(_json).appendTo('.container');
            var swiper = new Swiper('.swiper-container',{ pagination: '.swiper-pagination',paginationClickable: true,});
        }
    });

    function ctrl_newsdetail_frame() {

    }
</script>
<?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_footer" );?>




