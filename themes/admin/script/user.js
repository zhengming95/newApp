/**
 * 对于用户管理的js文件
 */
;
define("user", function(require, exports, module) {
  //    登录验证
  exports.login = function() {
    var jq = require('jquery');
    jq(document).ready(function() {
      jq(".error").fadeOut(4000);
      jq(".UserName").bind("click", function() {
        var txt = jq(this).val();
        if (txt == this.defaultValue) {
          jq(this).val("");
        } else if (txt == '') {
//                    jq(this).val( this.defaultValue);
        }
      });
      jq(".UserPassword").bind("click", function() {
        var txt = jq(this).val();
        if (txt == this.defaultValue) {
          jq(this).val("");
        } else if (txt == '') {
//                    jq(this).val( this.defaultValue);
        }
      });
    });
  };
});

