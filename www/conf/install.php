<?php

!defined('APPPATH') && exit();
if (!file_exists(themeinfo('path') . 'admin/.lock.php') && file_exists(themeinfo('path') . 'admin/install.php')) {
    @header("Content-type: text/html; charset=utf-8");
    require themeinfo('path') . 'admin/install.php';
    load_class('DBManage', 'app');
    $dbm = new DBManage(DBHOST, DBUSERNAME, DBPASSWORD, DBNAME, 'utf8');
    $dbm->restore(themeinfo('path') . 'admin/' . $config['initdb']);
    file_put_contents(themeinfo('path') . 'admin/.lock.php', '<?php exit;?>');
    echo '<br>';
    echo '如果需要重新安装主题请删除' . themeinfo('path') . 'admin/.lock.php';
    ?>
    <script type="text/javascript">
        setTimeout(function () {
            window.location.reload();
        }, 2000);
    </script>
    <?php

    exit();
}