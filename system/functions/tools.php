<?php

/**
 * 生成验证码
 */
function djy_captcha() {
    require_cache(SYS . '/include/captcha/captcha.php');
    session_start();
    $captcha = new SimpleCaptcha();
// OPTIONAL Change configuration...
    $captcha->wordsFile = 'words/es.php';
    // var_dump("");
    $captcha->session_var = 'secretword';
    // $captcha->lineWidth = false;
    // $captcha->scale = 4;
    // $captcha->Yperiod = 10;
    // $captcha->Yamplitude = 1;
    // $captcha->Xperiod = 11;
    // $captcha->Xamplitude = 1;
    // $captcha->minWordLength = 5;
    // $captcha->maxWordLength = 5;
    // $captcha->width = 140;
    // $captcha->height = 50;
    // $captcha->blur = false;
    // $captcha->resourcesPath = SYS . "/include/captcha/resources";
    // $captcha->CreateImage();

    $captcha->lineWidth = true;
    $captcha->scale = 6;
    $captcha->Yperiod = 0;
    $captcha->Yamplitude = 0;
    $captcha->Xperiod = 0;
    $captcha->Xamplitude = 0;
    $captcha->minWordLength = 4;
    $captcha->maxWordLength = 4;
    $captcha->width = 100;
    $captcha->height = 40;
    $captcha->blur = false;
    $captcha->resourcesPath = SYS . "/include/captcha/resources";
    $captcha->CreateImage();
}

//轻量级验证码
function djy_scaptcha() {
    /*
      验证码 Powered By KASON test http://www.hzhuti.com/nokia/c6/ */
    @session_start();
    $num = 4; //验证码个数
    $width = 60; //验证码宽度
    $height = 20; //验证码高度
    $code = "";
    for ($i = 0; $i < $num; $i++) {//生成验证码
        switch (rand(0, 2)) {
            case 0:$code[$i] = chr(rand(48, 57));
                break; //数字
            case 1:$code[$i] = chr(rand(65, 90));
                break; //大写字母
            case 2:$code[$i] = chr(rand(97, 122));
                break; //小写字母
        }
    }
    $_SESSION['SafeCode'] = implode('', $code);
    $image = imagecreate($width, $height);
    imagecolorallocate($image, 255, 255, 255);
    for ($i = 0; $i < 60; $i++) {//生成干扰像素
        $dis_color = imagecolorallocate($image, rand(0, 2555), rand(0, 255), rand(0, 255));
        imagesetpixel($image, rand(1, $width), rand(1, $height), $dis_color);
    }
    for ($i = 0; $i < $num; $i++) {//打印字符到图像
        $char_color = imagecolorallocate($image, rand(0, 2555), rand(0, 255), rand(0, 255));
        imagechar($image, 60, ($width / $num) * $i, rand(0, 5), $code[$i], $char_color);
    }
    header("Content-type:image/png");
    imagepng($image); //输出图像到浏览器
    imagedestroy($image); //开释资料
}

/**
 * 检查验证码是否正确
 */
function djy_captcha_chk() {
    @session_start();
    $txt = str_decode($_REQUEST['captchatxt']);
    $stxt = str_decode($_SESSION['secretword']);
    if ($txt == $stxt) {
        return TRUE;
    }
    return FALSE;
}

/**
 * 清除验证码
 */
function djy_captcha_clear() {
    unset($_SESSION['secretword']);
}

// 该函数copy from tp
function djy_dump($var, $echo = true, $label = null, $strict = true) {
    $label = ($label === null) ? '' : rtrim($label) . ' ';
    if (!$strict) {
        if (ini_get('html_errors')) {
            $output = print_r($var, true);
            $output = '<pre>' . $label . htmlspecialchars($output, ENT_QUOTES) . '</pre>';
        } else {
            $output = $label . print_r($var, true);
        }
    } else {
        ob_start();
        var_dump($var);
        $output = ob_get_clean();
        if (!extension_loaded('xdebug')) {
            $output = preg_replace("/\]\=\>\n(\s+)/m", '] => ', $output);
            $output = '<pre>' . $label . htmlspecialchars($output, ENT_QUOTES) . '</pre>';
        }
    }
    if ($echo) {
        echo($output);
        return null;
    } else
        return $output;
}

/**
 * 显示一个编辑器
 * @param type $type 编辑器的类型
 * @param type $Config 配置信息
 */
function djy_editor($type, $data, $Config) {
    static $is_loaded = FALSE;
    ob_start();
    $id = $Config['id'] != "" ? $Config['id'] : "id_textarea";
    if ($type == 'ue') {
        ?>
        <textarea name="<?php echo $id; ?>" id="<?php echo $id; ?>" class="<?php echo $Config['class']; ?>" cols="40" rows="5"><?php echo ($data); ?></textarea>
        <?php if (!$is_loaded) {
            ?>		
            <script  type="text/javascript" charset="utf-8" >
                window.UEDITOR_CONFIG || document.write('<script type="text/javascript" charset="utf-8" src="<?php echo STATICURL; ?>/system/static/lib/editor/editor_config.js"><\/script>');
            </script>			
            <script type="text/javascript">
                window.UEDITOR_CONFIG.UEDITOR_HOME_URL = "<?php echo STATICURL; ?>/system/static/lib/editor/";
            </script>	
            <script  type="text/javascript" charset="utf-8" >
                window.UE || document.write('<script type="text/javascript" charset="utf-8" src="<?php echo STATICURL; ?>/system/static/lib/editor/editor.js"><\/script>');
            </script>
            <?php
        } $is_loaded = true;
        ?>
        <script type="text/javascript">
            var editor = new baidu.editor.ui.Editor();//渲染编辑器                           
            editor.render('<?php echo $id; ?>');
        </script>
        <?php
    }
    $ewdata = ob_get_contents();
    ob_end_clean();
    return $ewdata;
}

/**
 * 解析url
 * @param type $urls
 * @return string 
 */
function djy_analyze_url($uri) {
    if (strpos($uri, '?')) {
        $qArr = explode('?', $uri);
        $uri = $qArr[0];
    }
    $url_path = parse_url(urldecode($uri));


    if (strlen($url_path['path']) < strlen(REWRITEURL)) {
        $s = $url_path['path'] . '/' . BASEFILE;
        $s = str_replace('//', '/', $s);
        if ($s == REWRITEURL) {
            $url_path['path'] = REWRITEURL;
        }
    }
    // var_dump(REWRITEURL);
    // var_dump($url_path['path']);
    $url = $url_path['path'];
    if (REWRITEURL != '') {
        $url = str_replace(REWRITEURL, '', $url_path['path']);
    }
    if (BASEURL != '') {
        $url = str_replace(BASEURL, '', $url_path['path']);
    }

    $url = str_replace('//', '/', $url);
    $urls = explode('/', $url);
    $k = 0;
    $num = count($urls);
    for ($loop = 0; $loop < $num; $loop++) {
        if ($urls[$loop] != '') {
            if ($loop != $k) {
                $urls[$k] = str_encode($urls[$loop]);
            }
            $k++;
        }
    }
    for (; $k < $num; $k++) {
        unset($urls[$k]);
    }
    if (!isset($urls[0]) || $urls[0] == '') {
        $urls[0] = 'index';
    }
    return $urls;
}

/**
 * 命令行解析
 * @param type $urls
 * @return string 
 */
function djy_analyze_argv($argv) {
    $urls = array();
    $num = count($argv);
    for ($i = 1; $i < $num; $i++) {
        $urls[] = $argv[$i];
    }
    if (!isset($urls[0]) || $urls[0] == '') {
        $urls[0] = 'index';
    }
    return $urls;
}

/**
 * 
 * @param type $url
 * @param type $time
 * @param type $msg
 */
function djy_redirect($url, $time = 0, $msg = '') {
    //多行URL地址支持
    $url = str_replace(array("\n", "\r"), '', $url);
    if (empty($msg))
        $msg = "系统将在{$time}秒之后自动跳转到{$url}！";
    if (!headers_sent()) {
        // redirect
        if (0 === $time) {
            header("Location: " . $url);
        } else {
            header("refresh:{$time};url={$url}");
            echo($msg);
        }
        exit();
    } else {
        $str = "<meta http-equiv='Refresh' content='{$time};URL={$url}'>";
        if ($time != 0)
            $str .= $msg;
        exit($str);
    }
}

//判断是否属手机访问
function is_mobile_access() {
    $user_agent = @$_SERVER['HTTP_USER_AGENT'];
    $mobile_agents = Array("240x320", "acer", "acoon", "acs-", "abacho", "ahong", "airness", "alcatel", "amoi", "android", "anywhereyougo.com", "applewebkit/525", "applewebkit/532", "asus", "audio", "au-mic", "avantogo", "becker", "benq", "bilbo", "bird", "blackberry", "blazer", "bleu", "cdm-", "compal", "coolpad", "danger", "dbtel", "dopod", "elaine", "eric", "etouch", "fly ", "fly_", "fly-", "go.web", "goodaccess", "gradiente", "grundig", "haier", "hedy", "hitachi", "htc", "huawei", "hutchison", "inno", "ipad", "ipaq", "ipod", "jbrowser", "kddi", "kgt", "kwc", "lenovo", "lg ", "lg2", "lg3", "lg4", "lg5", "lg7", "lg8", "lg9", "lg-", "lge-", "lge9", "longcos", "maemo", "mercator", "meridian", "micromax", "midp", "mini", "mitsu", "mmm", "mmp", "mobi", "mot-", "moto", "nec-", "netfront", "newgen", "nexian", "nf-browser", "nintendo", "nitro", "nokia", "nook", "novarra", "obigo", "palm", "panasonic", "pantech", "philips", "phone", "pg-", "playstation", "pocket", "pt-", "qc-", "qtek", "rover", "sagem", "sama", "samu", "sanyo", "samsung", "sch-", "scooter", "sec-", "sendo", "sgh-", "sharp", "siemens", "sie-", "softbank", "sony", "spice", "sprint", "spv", "symbian", "tablet", "talkabout", "tcl-", "teleca", "telit", "tianyu", "tim-", "toshiba", "tsm", "up.browser", "utec", "utstar", "verykool", "virgin", "vk-", "voda", "voxtel", "vx", "wap", "wellco", "wig browser", "wii", "windows ce", "wireless", "xda", "xde", "zte");
    $is_mobile = false;
    foreach ($mobile_agents as $device) {
        if (stristr($user_agent, $device)) {
            $is_mobile = true;
            break;
        }
    }
    return $is_mobile;
}

/**
 * 得到二维码的相关信息
 * @param type $ucode 二维码号
 */
function djy_barcode_msg($ucode) {
    $url = 'http://search.anccnet.com/searchResult2.aspx?keyword=' . $ucode;
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_HTTPHEADER, array(
        'Host: search.anccnet.com',
        'User-Agent: Mozilla/5.0 (Windows NT 6.1; rv:27.0) Gecko/20100101 Firefox/27.0',
        'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8',
        'Accept-Language: en-US,en;q=0.5',
//    'Accept-Encoding: gzip, deflate',
        'Referer: http://www.ancc.org.cn/Service/queryTools/Internal.aspx',
        'Connection: keep-alive'
    ));

    curl_setopt($ch, CURLOPT_HEADER, 0); //头信息部输出
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1); ///设置不输出在浏览器上 
    curl_setopt($ch, CURLOPT_URL, $url);
    $result = curl_exec($ch);

    $key = sprintf("%014s", $ucode);

    $keys = str_split($key, 5);

    $p = BASEPATH . '/data';
    dir_mk($p);
    foreach ($keys as $key => $value) {
        $p = $p . '/' . $value;
        if ($key == 2) {
            $p = $p . '.php';
            file_put_contents($p, '<?php exit;?>' . $result);
        } else {
            dir_mk($p);
        }
    }
    curl_close($ch);


    $fd = iconv("GBK", "UTF-8", $result);
    $data = explode('class="p-supplier"', $fd);
    $data = explode('id="myPager"', $data[1]);
    $data = '<div' . $data[0] . '>';
    $search = array("'<script[^>]*?>.*?</script>'si", // 去掉 javascript
        "'<[\/\!]*?[^<>]*?>'si", // 去掉 HTML 标记
        "'([\r\n])[\s]+'", // 去掉空白字符
        "'&(quot|#34);'i", // 替换 HTML 实体
        "'&(amp|#38);'i",
        "'&(lt|#60);'i",
        "'&(gt|#62);'i",
        "'&(nbsp|#160);'i",
        "'&(iexcl|#161);'i",
        "'&(cent|#162);'i",
        "'&(pound|#163);'i",
        "'&(copy|#169);'i",
        "'&#(\d+);'e");                    // 作为 PHP 代码运行
    $replace = array("",
        "",
        "\\1",
        "\"",
        "&",
        "<",
        ">",
        " ",
        chr(161),
        chr(162),
        chr(163),
        chr(169),
        "chr(\\1)");
    $text = preg_replace($search, $replace, $data);
    $data = explode('<dt>', $data);



    $data1 = array();
    foreach ($data as $key => $value) {
        if (strpos($value, '名称：') !== FALSE) {
            $value = str_replace('名称：', '', $value);
            $value = preg_replace($search, $replace, $value);
            $value = str_replace("\r", "", $value);
            $data1['mingcheng'] = $value;
        } else
        if (strpos($value, '规格型号') !== FALSE) {
            $value = str_replace('规格型号：', '', $value);
            $value = preg_replace($search, $replace, $value);
            $value = str_replace("\r", "", $value);
            $data1['xinghao'] = $value;
        } else
        if (strpos($value, '描述：') !== FALSE) {
            $value = str_replace('描述：', '', $value);
            $value = preg_replace($search, $replace, $value);
            $value = str_replace("\r", "", $value);
            $data1['xinghao'] = $value;
        } else
        if (strpos($value, '商标：') !== FALSE) {
            $value = str_replace('商标：', '', $value);
            $value = preg_replace($search, $replace, $value);
            $value = str_replace("\r", "", $value);
            $data1['shangbiao'] = $value;
        } else
        if (strpos($value, '发布厂家：') !== FALSE) {
            $value = str_replace('发布厂家：', '', $value);
            $value = preg_replace($search, $replace, $value);
            $value = str_replace("\r", "", $value);
            $data1['changjia'] = $value;
        } else
        if (strpos($value, '商品条码：') !== FALSE) {
            $value = str_replace('商品条码：', '', $value);
            $value = preg_replace($search, $replace, $value);
            $value = str_replace("\r", "", $value);
            $data1['tiaoxingma'] = $value;
        }
    }
    return $data1;
}

/**
 * 生成唯一的id
 * @param type $type
 */
function djy_oid($type) {
    $sql = "insert into " . PREFIX . "oid (create_time,type)values(now(),'{$type}')";
    $dbc = Model::$dbc;
    $dbc->execute($sql);
    return $dbc->insertId();
}
