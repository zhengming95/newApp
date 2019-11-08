/**
 * 模块名称标识
 * load是全局的加载器
 * exports是导出的 
 * module.exports 是导出的所有信息 可以是 方法 字符串 类
 */
define("helloworld", function (require, exports, module) {

//    module.exports = function () {
//        return  "你好，欢迎你使用xpjc的产品。email：xpjc@foxmail.com";
//    }
    module.exports.id = 1;
});

