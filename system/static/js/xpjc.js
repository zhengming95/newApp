//全局变量
var DEBUG = true;
//全局的调试信息
var load = false;
//全局的模块加载
var define = false;
//全局的定义模块定义
/**
 * 类原型 一切类的基类
 */
var Class = {
    /**建立一个类*/
    create: function () {
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
};
// 显示错误信息
ShowLog = Class.create();
ShowLog.prototype.initialize = function () {
    if (DEBUG) {
        try {
            console.log(arguments[0]);
        } catch (e) {
        }
    }
};
ShowAlert = Class.create();
ShowAlert.prototype.initialize = function () {
    if (DEBUG) {
        alert(arguments[0]);
    }
};
var XPJC = Class.create();
XPJC.fn = XPJC.prototype = {};
XPJC.fn.initialize = function () {
    if (arguments[0] != "") {

        this.obj = document.getElementById(arguments[0]);
    }
};
/**
 *得到浏览器的宽高
 *
 */
XPJC.fn.win = function () {
    var winWidth = 0;
    var winHeight = 0;
    //获取窗口宽度
    if (window.innerWidth) {
        winWidth = window.innerWidth;
    } else if ((document.body) && (document.body.clientWidth)) {
        winWidth = document.body.clientWidth;
    }
    ;
    //获取窗口高度
    if (window.innerHeight) {
        winHeight = window.innerHeight;
    } else if ((document.body) && (document.body.clientHeight)) {
        winHeight = document.body.clientHeight;
    }
    ;
    //通过深入Document内部对body进行检测，获取窗口大小
    if (document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth) {
        winHeight = document.documentElement.clientHeight;
        winWidth = document.documentElement.clientWidth;
    }
    ;
    this.browser();
    if (this.bs != 'sf') {
        scrollTop = document.documentElement.scrollTop;
    } else {
        scrollTop = document.body.scrollTop;
    }
    ;

    return {
        'h': winHeight,
        'w': winWidth,
        'scrollTop': scrollTop
    };
};
XPJC.fn.onload = function (callback) { //加载项目
    var oldLoad = window.onload;
    if (typeof window.onload != 'function') {
        window.onload = callback;
    } else {
        window.onload = function () {
            oldLoad();
            callback();
        }
    }
};

XPJC.fn.onscroll = function (callback) { //加载项目
    var onscroll = window.onscroll;
    if (typeof window.onscroll != 'function') {
        window.onscroll = callback;
    } else {
        window.onscroll = function () {
            onscroll();
            callback();
        }
    }
};
XPJC.fn.onresize = function (callback) { //加载项目
    var onresize = window.onresize;
    if (typeof window.onresize != 'function') {
        window.onresize = callback;
    } else {
        window.onresize = function () {
            onresize();
            callback();
        }
    }
};

XPJC.fn.hasClass = function (name) {
    var className = ' ' + name + ' ';
    if ((' ' + this.obj.className + ' ').replace(/[\n\t]/g, ' ').indexOf(className) > -1) {
        return true;
    } else {
        return false;
    }

};

XPJC.fn.addClass = function (name) {
    if (!this.hasClass(name)) {
        this.obj.className += ' ' + name;
    }
    ;
    return this;
};

XPJC.fn.removeClass = function (name) {
    var elem = this.obj;
    if (!name) {
        elem.className = '';
    } else if (this.hasClass(name)) {
        elem.className = elem.className.replace(name, ' ');
    }
    ;
    return this;
};
XPJC.fn.insertAfter = function (targetElement) {
    var parent = targetElement.parentNode;
    if (parent.lastChild == targetElement) {
        parent.appendChild(this.obj);
    } else {
        parent.insertBefore(this.obj, targetElement.nextSibling);
    }
};
XPJC.fn.opacity = function (value) {
    if (document.all) {
        this.obj.style.filter = "progid:DXImageTransform.Microsoft.Alpha(opacity=" + value + ");";
    } else {
        this.obj.style.opacity = value / 100;
    }
};

XPJC.fn.toggle = function () {
    if (this.obj.style.display == "") {
        this.obj.style.display = "none";
    } else {
        if (this.obj.style.display == "block") {
            this.obj.style.display = "none";
        } else {
            this.obj.style.display = "block";
        }
    }
};
XPJC.fn.attr = function () {
    if (arguments[1]) {
        this.obj.setAttribute(arguments[0], arguments[1]);
    } else {
        return this.obj.getAttribute(arguments[0]);
    }
};
XPJC.fn.css = function () {
    if (arguments[1]) {
        propprop = arguments[0].split("-");
        // tolocaleUpperCase()
        var prop = '';
        this.each(propprop, function (str, i) {
            if (i) {
                prop += prop + str.replace(/\b\w+\b/g, function (word) {
                    return word.substring(0, 1).toUpperCase() + word.substring(1);
                });
            } else {
                prop += str;
            }
        });
        prop = "this.obj.style." + prop + "= arguments[1];"; //动态生成
        eval(prop);

    } else if (arguments[0]) {
        if (this.obj.attr) {
            //若样式存在于html中,优先获取
            return this.obj.style[attr];
        } else if (this.obj.currentStyle) {
            return this.obj.currentStyle[arguments[0]];
        } else if (window.getComputedStyle) { //非IE
            propprop = arguments[0].replace(/([A-Z])/g, "-$1");
            propprop = propprop.toLowerCase();
            return document.defaultView.getComputedStyle(this.obj, null)[propprop];
        }
        ;
        return null;
    }
};

XPJC.fn.browser = function () {
    this.bs_v = 0;
    var nav = window.navigator;
    var agent = nav.userAgent;
    if (agent.indexOf("MSIE") > 0) {
        this.bs = "ie";
        var V = nav.appVersion.split(";")[1].replace(/[ ]/g, "");
        V = V.replace("MSIE", "");
        this.bs_v = V;
    } else if (agent.indexOf("Firefox") > 0) {
        this.bs = "ff";
    } else if (agent.indexOf("Safari") > 0) {
        this.bs = "sf";
    } else if (agent.indexOf("Camino") > 0) {
        this.bs = "Camino";
    } else if (agent.indexOf("Gecko/") > 0) {
        this.bs = "Gecko";
    } else {
        this.bs = "bs";
    }
    ;
    return nav;
};


XPJC.fn.isMobile = function () {
    return {
        android: function () {
            return /Android/i.test(navigator.userAgent);
        },
        blackberry: function () {
            return /BlackBerry/i.test(navigator.userAgent);
        },
        ios: function () {
            return /iPhone|iPad|iPod/i.test(navigator.userAgent);
        },
        windows: function () {
            return /IEMobile/i.test(navigator.userAgent);
        },
        any: function () {            
            var _xp = new XPJC();            
            return (_xp.isMobile().android() || _xp.isMobile().blackberry() || _xp.isMobile().ios() || _xp.isMobile().windows());
        }
    };
};




XPJC.fn.each = function (list, fun) {
    for (var i = 0, len = list.length; i < len; i++) {
        fun(list[i], i);
    }
};
/**
 * 绑定函数到obj
 * @param {Object} object
 * @param {Object} fun
 */
XPJC.fn.bind = function (fun) {
    fun.apply(this.obj, arguments);
};
/**
 * 得到事件 测试支持 ie6 7(以及基于ie浏览器)  ff 2 3  Chrom  Safari 4 支持 Opera 10.62 *
 * 以下是测试代码
 */
/*
 <body>
 <b id="test">eeeeeeeeeeeeeeeeeeee</b>  <b id="test1">ttttttttttttttttt</b>
 <script type="text/javascript">
 function showmenuie5(){
 alert('d');
 var event = XPJC.common.getEvent();
 alert(event);
 return false;
 }
 $("test").oncontextmenu = showmenuie5;
 $("test1").onmousedown=showmenuie5;
 </script>
 </body>
 */
XPJC.fn.getEvent = function () {
    /*
     同时兼容ie和ff的写法
     */
    if (document.all) {
        return window.event;
    }
    ;
    func = XPJC.getEvent.caller;
    /*GetEvent  自身调用 */
    while (func != null) {
        var arg0 = func.arguments[0];
        if (arg0) {
            if ((arg0.constructor == Event || arg0.constructor == MouseEvent) || (typeof (arg0) == "object" && arg0.preventDefault && arg0.stopPropagation)) {
                return arg0;
            }
        }
        ;
        func = func.caller;
    }
    ;
    return null;
};

XPJC.fn.mousePosition = function (e) {
    var posx = 0;
    var posy = 0;
    if (!e) {
        var e = window.event;
    }
    ;
    if (e.pageX || e.pageY) {
        posx = e.pageX;
        posy = e.pageY;
    } else if (e.clientX || e.clientY) {
        posx = e.clientX + document.body.scrollLeft + document.documentElement.scrollLeft;
        posy = e.clientY + document.body.scrollTop + document.documentElement.scrollTop;
    }
    ;
    return {
        'x': posx,
        'y': posy
    };
};


Ajax = Class.create();
Ajax.fn = Ajax.prototype = {};
Ajax.fn.getxhr = function () { //得到xhr
    var _xhr = false;
    if (window.XMLHttpRequest) {
        _xhr = new XMLHttpRequest();
    } else if (window.ActiveXObject) {
        /* ie*/
        try {
            _xhr = new ActiveXObject("Msxml2.XMLHTTP");
        } catch (e1) {
            try {
                _xhr = new ActiveXObject("Microsoft.XMLHTTP");
            } catch (e2) {
                new ShowLog(e2);
            }
        }
    }
    ;
    return _xhr;
};

Ajax.fn.initialize = function () {
    var args = arguments[0];
    this.beforeSend = args['beforeSend'] != undefined ? args['beforeSend'] : function () {
    };
    this.error = args['error'] != undefined ? args['error'] : function () {
    };
    this.success = args['success'] != undefined ? args['success'] : function () {
    };
    this.complete = args['complete'] != undefined ? args['complete'] : function () {
    };
    this.dataType = args['dataType'] != undefined ? args['dataType'] : "text";
    this.data = args['data'] != undefined ? args['data'] : "";
    this.async = args['async'] != undefined ? args['async'] : true;

    this.timeout = args['timeout'] != undefined ? args['timeout'] : 8000;
    this.type = args['type'] != undefined ? args['type'] : "GET";
    this.url = args['url'] != undefined ? args['url'] : "";
    this.contentType = args['contentType'] != undefined ? args['contentType'] : "application/x-www-form-urlencoded";
    if (!this.contentType && this.type == "POST") {
        this.contentType = 'application/x-www-form-urlencoded';
//         this.contentType = 'multipart/form-data';
    } else {
        this.contentType = "";
    }
    ;
    this.xhr = this.getxhr();

    if (this.xhr && this.url != "") {
        try {
            this.xhr.open(this.type, this.url, this.async);
            //第三个参数是同步还是异步加载 true 是异步传输

            if (this.contentType != "") {
                this.xhr.setRequestHeader('Content-Type', this.contentType);
            }
            ;

            this.xhr.send(this.data);
            if (this.async) {
                var loader = this;
                this.xhr.onreadystatechange = function () { //监控执行的状态
                    var ready = loader.xhr.readyState;
                    if (ready == 4) {
                        var httpStatus = loader.xhr.status;
                        if (httpStatus == 200 || httpStatus == 304 || httpStatus == 0) {
                            loader.success(this);
                        } else {
                            loader.error(this);
                        }
                    }
                }
            } else { //同步加载直接返回xhr对象
                return this.success(this.xhr);
                ;
            }
        } catch (err) {
            this.error(this);
            new ShowLog(err);
        }
    }

};
//var A = new Ajax({
//    url:"/xpjc/js/str.js",
//    async:false,
//    success:function(){
//        alert("加载错误1");
//    },
//    error:function(){
//        alert("加载错误");
//    }
//});
//
//   var A = new Ajax({
//                url: "/xpjcadmin/reload.php?xpjc_reload_lasttime=" + xpjc_reload_lasttime,
//                async: false,
//                success: function (xhr) {
//                    var json = eval('(' + xhr.responseText + ')');
//                    _xpjc_reload_callback(json)
//                },
//                error: function () {
//
//                }
//            });
// new ShowLog(new Ajax(""));
//new ShowLog(A.xhr);
//alert("dddd");



//模块方法定义功能
(function () { //闭包实现加载器
    var modules = {};
    function build(module) {
        var factory = module.factory;
        module.exports = {};
        delete module.factory;
        factory(load, module.exports, module);
        return module.exports;
    }
    ;

    load = function (id) {
        if (!modules[id]) {

            var ajaxModule = load("ajax");
            var path = "";
            if (modules["path"]) {
                path = load("path");
            } else {
                path = "/xpjc/js/modules/";
            }
            ;
            ajaxModule({
                url: path + "" + id + ".js",
                async: false,
                success: function () {
                    eval(this.xhr.responseText);
                },
                error: function () {
                    new ShowAlert("组件" + id + "加载出错…… ，组件应放在modules目录，组件名对应模块名称");
                }
            });
            if (!modules[id]) {
                new ShowLog("module " + id + " not found");
                throw "module " + id + " not found";
            }
        }
        ;
        return modules[id].factory ? build(modules[id]) : modules[id].exports;
    };
    define = function (id, factory) {
        if (modules[id]) {
            new ShowLog("module " + id + " already defined");
            throw "module " + id + " already defined";
        }
        ;
        modules[id] = {
            id: id,
            factory: factory
        };
    };
    define.remove = function (id) {
        delete modules[id];
    };
})();






//定义ajax模块
define("ajax", function (require, exports, module) {
    module.exports = function () {
        return new Ajax(arguments[0]);
    }
});
define("core", function (require, exports, module) {
    module.exports = function () {
        return new XPJC(arguments[0]);
    }
});
window.jQuery && define("jquery", function (require, exports, module) {
    module.exports = function (sel) {
        return jQuery(sel);
    }
});