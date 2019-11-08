/**
 * 得到url请求的参数
 * @param {type} name
 * @returns {unresolved}
 */
function getQueryString(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
    _s = window.location.search.substr(1);
    if (_s.indexOf("?") > 0) {
        _sArr = _s.split("?");
        _s = _sArr[0];
    }
    var r = _s.match(reg);
    if (r != null)
        return unescape(r[2]);
    return null;
}


function in_array(stringToSearch, arrayToSearch) {
    for (s = 0; s < arrayToSearch.length; s++) {
        thisEntry = arrayToSearch[s].toString();
        if (thisEntry == stringToSearch) {
            return true;
        }
    }
    return false;
}

function showbigimg(imgs, img) {
    var imgArr = new Array();
    var imgindex = 0;
    k = Math.floor(Math.random() * 2000000000);

    $(img).attr("showbigimgid", k);//防止冲突
    $(imgs).each(function (i, n) {
        if ($(n).attr("showbigimgid") == k) {
            imgindex = i;
        }
        imgArr[i] = $(n).attr("src");
    })

    var obj = api.require('imageBrowser');
    obj.openImages({
        imageUrls: imgArr,
        showList: false,
        activeIndex: imgindex
    });

    return false;
}

// 监控滚动条事件
function scrollpage() {
    $(window).bind("scroll", function () {
        viewH = $(window).height(); //可见高度
        contentH = $(document).height(); //内容高度
        scrollTop = $(window).scrollTop(); //滚动高度
        if (scrollTop >= contentH - viewH - 10) {
            $(window).unbind("scroll");
            loaddata();
        }
    });
}