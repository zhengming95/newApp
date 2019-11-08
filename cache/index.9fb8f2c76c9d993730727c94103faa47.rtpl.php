<?php if(!class_exists('raintpl')){exit;}?><?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_header" );?>
<h1>php raintpl</h1>
<a href="/index.php/about.html">about</a> 
<!--<?php echo "<pre>"; print_r( $this->var ); echo "</pre>"; ?>
<?php echo $uri;?> <br />
<?php echo $path;?> <br />
<?php echo $style;?> <br />
<?php echo $sys;?> <br />
<?php echo $search;?> <br />
<?php echo $theme;?> <br />-->

<tt>variable {$variable} = <b><?php echo $variable;?></b></tt>
<tt>assignment <?php $number=$this->var['number']=10;?> and print <?php echo $number;?></tt>

<tt>
    <?php echo $variable . $number;?><br/>
    <?php echo $number + 20;?>
</tt>
<tt>
    <?php echo ( substr( $variable, 0,7 ) );?><br/>
    a modifier on string: <?php echo strtoupper( "hello world" );?>
</tt>
<tt>Constant: <?php  echo true;?></tt>

<tt>Negation of false is true: <?php echo round( PHP_VERSION );?></tt>

<h3>Simple loop example</h3>
<tt>
    <ul>
        <?php $counter1=-1; if( isset($week) && is_array($week) && sizeof($week) ) foreach( $week as $key1 => $value1 ){ $counter1++; ?>
        <li><?php echo $key1;?> = <?php echo $value1;?></li>
        <?php } ?>
    </ul>
</tt>
<li>ID _ Name _ Color</li>
<?php $counter1=-1; if( isset($user) && is_array($user) && sizeof($user) ) foreach( $user as $key1 => $value1 ){ $counter1++; ?>
<li class="color<?php echo $counter1%2+1;?>"><?php echo $key1;?>) - <?php echo strtoupper( $value1["name"] );?> - <?php echo $value1["color"];?></li>
<?php } ?>


<h3>Loop an empty array</h3>
<tt>
    <ul>
        <?php $counter1=-1; if( isset($empty_array) && is_array($empty_array) && sizeof($empty_array) ) foreach( $empty_array as $key1 => $value1 ){ $counter1++; ?>
        <li class="color<?php echo $counter1%2+1;?>"><?php echo $key1;?>) - <?php echo $value1["name"];?> - <?php echo $value1["color"];?></li>
        <?php }else{ ?>
        <b>The array is empty</b>
        <?php } ?>
    </ul>
</tt>
<?php if( $number==10 ){ ?>OK!
<?php }else{ ?>NO!<?php } ?>



<h3>example of if, elseif, else example</h3>
<tt>
    <?php if( substr($variable,0,1)=='A' ){ ?>First character is A
    <?php }elseif( substr($variable,0,1)=='B' ){ ?>First character is B
    <?php }else{ ?>First character of variable is not A neither B
    <?php } ?>
</tt>
<br/><br/>

<h3>use of ? : operator (number==10?'OK!':'no')</h3>
You can also use the ? operator instead of if
<tt><?php echo $number==10? 'OK!' : 'no';?></tt>

<h2>Functions</h2>
<div class="layout">
    <h3>Example of function: ucfirst(strtolower($title))</h3>
    <tt><?php echo ucfirst(strtolower($title)); ?></tt>
</div>

<div id="footer"><?php echo $copyright;?></div>







<h1>artTemplate</h1>
<ul>
    <li onclick="dianjishijian('1');">111111111111111<img src="/system/static/images/logo/JYD.png" onclick="dianjishijian(3);" alt="" />
        <a href="http://zhidao.baidu.com" onclick="goto('http://zhidao.baidu.com')">百度知道</a>
    </li>
</ul>

<input type="button" value="改变颜色" onclick="dianjishijian(3);">
<input type="button" value="改变颜色" onclick="dianjishijian(4);">


<!--php 加载art模板-->
<?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc/art" );?>
<div id="content"></div>
<script type="text/javascript">
    function dianjishijian(i, obj) {
        event = arguments.callee.caller.arguments[0] || window.event;
        event.stopPropagation();
        event.preventDefault();
        console.log(this);
        console.log(obj);
    }
    function goto(url) {
        window.location.href = url;
        javascript:window.open("http://www.baidu.com", "_blank");
    }


$("input").on("click",function(){
    
})

    var data = {
        title: '标签',
        list: ['文艺', '博客', '摄影', '电影', '民谣', '旅行', '吉他']
    };
    var html = template('inc/art', data);//php 加载art模板
    document.getElementById('content').innerHTML = html;
</script>



<div id="content1">  
</div>  
<script id="test1" type="text/html">  
    {{xx1(n)}}  
</script> 
<script>
    template.helper("xx1", function (a) {
        return 10 + "--" + a;
    });
    var data = {
        n: 123
    };
    var html = template("test1", data);
    document.getElementById("content1").innerHTML = html;
</script>  
<?php $tpl = new RainTPL;$tpl->assign( $this->var );$tpl->draw( "inc_footer" );?>