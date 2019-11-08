<?php ?>
<!DOCTYPE HTML>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <title>xpjc js类库使用示例</title>
        <script type="text/javascript" src="/system/static/js/XPJC.js"></script>
        <script type="text/javascript">
            //定义组件的路径
            define("path", function(load, exports, module) {
                module.exports = "../modules/";
            });
            //测试加载 helloword 模块 文件
            var ddd = load("helloworld");

//            alert(ddd.id);

var xp = new XPJC();
console.log(xp.isMobile().any())

        </script>
    </head>
    <body>
        <h1>你好，欢迎你使用xpjc精心打造的类库</h1>
        <h2>类库的核心模块有两个</h2>
        <pre>
//定义ajax模块
define("ajax", function(load, exports, module) {		
    module.exports=function(){                    
        return new Ajax(arguments[0]);
    }
});
define("core", function(load, exports, module) {		
    module.exports=function(){                    
        return new XPJC(arguments[0]);
    }        
});
        </pre>
        <h2>类库中的全局变量有四个</h2>
        <pre>
var load = false;//全局的模块加载
var define=false; //全局的定义模块定义
/**
 * 类原型 一切类的基类
 */
var Class = {
    /**建立一个类*/
    create : function () {
        return function () {
            /*构造函数initialize 每个类都要实现该方法 */
            this.initialize.apply(this, arguments);
        }
    }
};
//类继承
var Extend = function () {
    for (var i = 1; i < arguments.length; i++) {
        for (var property in arguments[i].prototype) {
            /*把第一个参数后面的类的原形添加到第一个类上*/
            arguments[0].prototype[property] = arguments[i].prototype[property];
        }
    }
}
        </pre>
        <h2>使用规则</h2>
        <h3>
            <pre>
      <script type="text/javascript" src="/system/static/js/XPJC.js"></script>
        < script type="text/javascript">
            //定义组件的路径
           // define("path", function(load, exports, module) {		
           //     module.exports= "../modules/";          
           // });
            //测试加载 helloword 模块 文件
           // load("helloworld");           
        </script>
            </pre>     
        </h3>
        <h2>模块定义</h2>
        <h3>
            <pre>
查看 /modules/helloworld.js文件
            </pre>
        </h3>
    </body>
</html>