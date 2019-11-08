;
errorfunc = function (args1, args2, args3) {
}

/**
 * 后期要修改传参
 * @param {type} reqdata
 * @param {type} successfunc
 * @param {type} errorfunc
 * @returns {undefined}
 */
function controler(reqdata, successfunc, errorfunc) {
    var isapicloud = false;
    if (typeof (api) != "undefined" && api && api.deviceId) {
        isapicloud = true;
    }
    if (typeof (reqdata.showmodal) != "undefined") {
        delete reqdata.showmodal;
        var isAndroid = (/android/gi).test(navigator.appVersion);
        if (isAndroid) {
            initappready && isapicloud && api.showProgress({
                title: '加载中',
                text: '请等待……',
                modal: true
            });
        } else {
            initappready && isapicloud && api.showProgress({
                title: '',
                text: '',
                modal: true
            });
        }
    }
    var _url = 'http://' + AppDomain + AppCtrlUrl;
    if (typeof (reqdata.url) != "undefined") {
        _url += reqdata.url;
        delete reqdata.url;
    }
    
    _search = '';
    if (typeof (reqdata.search) != "undefined") {
        _search = reqdata.search;
        delete reqdata.search;
    }

    $window = $(window);
    //屏幕信息
    var screen = new Array();
    screen['h'] = $window.height();
    screen['w'] = $window.width();

    var deviceId = "";
    var deviceModel = '';  // 比如: iPhone 5
    var deviceName = '';  // 比如:“柚子”的 iPhone
    var connectionType = '';  //比如: wifi
    var systemVersion = '';  // 比如: 8.0
    var systemType = '';  // 比如: 8.0
    if (isapicloud) {
        deviceId = api.deviceId;
        deviceModel = api.deviceModel;  // 比如: iPhone 5
        deviceName = api.deviceName;  // 比如:“柚子”的 iPhone
        connectionType = api.connectionType;  //比如: wifi
        systemVersion = api.systemVersion;  // 比如: 8.0
        systemType = api.systemType;  // 比如: ios
    }
    //用户   联网类型  系统类型 系统版本号 系统设备号
    uuid = connectionType + "_" + systemType + "_" + systemVersion + "_" + deviceId;
    $.ajax({
        type: "GET",
        url: _url,
        cache: false,
        timeout: 30000,
        dataType: "jsonp",
        data: "uuid=" + uuid + "&deviceId=" + deviceId + "&screen=" + encodeURIComponent(JSON.stringify(screen)) + "&md=" + encodeURIComponent(JSON.stringify(reqdata)) + "&" + _search,
        success: function (json) {
            initappready && isapicloud && api.hideProgress();
            successfunc(json);
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {
            try {
                initappready && isapicloud && api.hideProgress();
                errorfunc(XMLHttpRequest, textStatus, errorThrown);
            } catch (e) {

            }
            this;
        },
    });
}

