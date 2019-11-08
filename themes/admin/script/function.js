var tabLen = 1;
//添加新标签
function addTabs(id, title) {
  var uri = "#tabs-" + hex_md5(id);

  var ishave = false;
  $.each($("#tabs ul li a"), function(i, n) {
    if ($(this).attr("href") == uri) {
      ishave = i;
    }
  });
  if (ishave) {
    $("#tabs").tabs("select", ishave);
  } else {
    var tb = $("#tabs").tabs("add", uri, title, tabLen);
    $("#tabs").tabs("select", $("#tabs").tabs("length") - 1);
  }
  return uri;
}
//显示信息 以及信息类型
function showAlert(msg, type) {
  $("#alert_msg_area .alert_msg_content").html(msg);
  $("#alert_msg_area").show().delay(2000).fadeOut();
}
jQuery(document).ready(function($) {
  // 头部
  $("input:submit, a, button", "#header").button();
  $("input:button, a", "#change-pwd-wrap").button();
  //修改密码
  $("#change-pwd").bind("click", function() {
    $("#change-pwd-wrap").fadeIn("slow");
    $w = $(window);
    $_w = $w.width();
    $_h = $w.height();
    $("#change-pwd-wrap").css({
      width: $_w + "px",
      height: $_h + "px"
    });
  });
  $("#chgpwd").bind("click", function() {
    var inpv = $("#pwd").val();
    if (inpv != "") {
      $.ajax({
        type: "POST",
        url: "admin.php/member/changepwd",
        data: "pwd=" + inpv,
        success: function(msg) {
          alert(msg);
          $("#change-pwd-wrap").fadeOut("slow");
          $("#pwd").val("");
        },
        error: function(xhr, textStatus, errorThrown) {
          alert("修改密码错误");
          $("#change-pwd-wrap").fadeOut("slow");
          this; // 调用本次AJAX请求时传递的options参数
        }
      });
    }
  });
  $("#cpwd").click(function() {
    $("#change-pwd-wrap").fadeOut("slow");
    $("#pwd").val("");
  });
  //列表配色
  $(".list-content tr").live("mouseover", function() {
    if (!$(this).hasClass("list-table-title")) {
      $(this).addClass("ui-state-highlight ui-corner-all");
    }
    return false;
  });
  $(".list-content tr").live("mouseout", function() {
    if (!$(this).hasClass("list-table-title")) {
      $(this).removeClass("ui-state-highlight ui-corner-all");
    }
    return false;
  });

  // 头部
  $("input:submit, a, button", "#header").button();
  $("input:button, a", "#change-pwd-wrap").button();

//全局系统链接
  $(".app-link").live("click", function() {
    var oval = $(this).attr("app-title");
    var _url = $(this).attr("app-href");
    var id = addTabs(_url, oval);
    $.ajax({
      type: "GET",
      url: _url,
      dataType: "html",
      data: "ajax=jqui",
      success: function(msg) {
        $(id).html(msg);
      }
    });
    return false;
  });

});
// $(".sl-table tr:not(:last-child)").live("mouseover",function(){
// $(this).addClass("ui-state-highlight ui-corner-all");
// });
// $(".sl-table tr:not(:last-child)").live("mouseout",function(){
// $(this).removeClass("ui-state-highlight ui-corner-all");
// });

/***
 在线编辑器
 
 **/

//var myue = null;
//
//function getEditor(obj, callback) {
//  if (!window.UE) {
//    setTimeout("getEditor(" + obj + "," + callback + ")", 1000);
//  } else {
//    try {
//      var editor = new UE.ui.Editor();
//      editor.render(obj);
//      editor.ready(function() {
//        callback(this);
//      })
//    } catch (e) {
//      var editor = new UE.ui.Editor();
//      editor.render(obj);
//      editor.ready(function() {
//        callback(this);
//      })
//    }
//  }
//}

// getEditor($('#<?php echo $form_id; ?> .myEditor1').get(0), function(){})


/**修改功能**************/
//$(".edit_item").live("click", function() {
//  var _url = $(this).attr("href");
//  var oval = $(this).html();
//  var id = addTabs(_url, oval);
//  $.ajax({
//    type: "GET",
//    url: _url,
//    dataType: "html",
//    data: "ajax=jqui",
//    success: function(msg) {
//      $(id).html(msg);
//    }
//  });
//  return false;
//});
//删除
//$(".del_item").live("click", function() {
//  var linkObj = $(this);
//  $("#dialog_del").dialog({
//    title: '确认删除',
//    buttons: {
//      "删除": function() {
//        $.ajax({
//          type: "GET",
//          url: $(linkObj).attr("href"),
//          dataType: "html",
//          data: "ajax=jqui",
//          success: function(msg) {
//            if (msg == 1) {
//              showAlert("删除信息成功");
//              $(linkObj).parent().parent().remove();
//            }
//          }
//        });
//
//        $(this).dialog("close");
//      },
//      "取消": function() {
//        $(this).dialog("close");
//      }
//    }
//  });
//
//  return false;
//});
//其他的方法
//$(".commonfun").live("click", function() {
//  var linkObj = $(this);
//  $.ajax({
//    type: "GET",
//    url: $(linkObj).attr("href"),
//    dataType: "html",
//    data: "ajax=jqui",
//    success: function(msg) {
//      if (msg == 1) {
//        showAlert("信息更新成功");
//      }
//    }
//  });
//  return false;
//});
