
jQuery(document).ready(function($) {
  $.ajaxSetup({
    cache: false
  });
  var cfg = ($.hoverintent = {
    sensitivity: 7,
    interval: 100
  });

  $.event.special.hoverintent = {
    setup: function() {
      $(this).bind("mouseover", jQuery.event.special.hoverintent.handler);
    },
    teardown: function() {
      $(this).unbind("mouseover", jQuery.event.special.hoverintent.handler);
    },
    handler: function(event) {
      var that = this,
              args = arguments,
              target = $(event.target),
              cX,
              cY,
              pX,
              pY;

      function track(event) {
        cX = event.pageX;
        cY = event.pageY;
      }
      ;
      pX = event.pageX;
      pY = event.pageY;
      function clear() {
        target
                .unbind("mousemove", track)
                .unbind("mouseout", arguments.callee);
        clearTimeout(timeout);
      }
      function handler() {
        if ((Math.abs(pX - cX) + Math.abs(pY - cY)) < cfg.sensitivity) {
          clear();
          event.type = "hoverintent";
          // prevent accessing the original event since the new event
          // is fired asynchronously and the old event is no longer
          // usable (#6028)
          event.originalEvent = {};
          jQuery.event.handle.apply(that, args);
        } else {
          pX = cX;
          pY = cY;
          timeout = setTimeout(handler, cfg.interval);
        }
      }
      var timeout = setTimeout(handler, cfg.interval);
      target.mousemove(track).mouseout(clear);
      return true;
    }
  };
  //左侧
  $("#accordion").accordion({
    header: "h3",
    autoHeight: false,
    navigation: true,
    collapsible: true,
    // event : "click hoverintent"
    event: "click"
  });
  $("#sidebar ul li").button();
  //tabs
  var $tabs = $("#tabs").tabs({
    tabTemplate: '<li><a href="#{href}">#{label}</a> <span class="ui-icon ui-icon-close">Remove Tab</span></li>',
    add: function(event, ui) {
      var tab_content = "正在加载中……";
      $(ui.panel).append("<p>" + tab_content + "</p>");
      tabLen++;
    }
    //,event: "mouseover"  //鼠标在标签页上面的时候打开标签页
  });
  $('#tabs span.ui-icon-close').live('click', function() {
    var index = $('li', $tabs).index($(this).parent());
    $tabs.tabs('remove', index);
  });

//  $('input[type=submit]', '.page a').live('click', function() {
//    $(this).hide();
//  });





});
