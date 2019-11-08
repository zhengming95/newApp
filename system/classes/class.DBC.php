<?php

!defined('DBCACHE') && define('DBCACHE', false); //数据库是否缓存
!defined('DBCACHETIME') && define('DBCACHETIME', '1800'); //缓存 半小时
/**
 *    fileName: DBC
 *        func: 数据库的抽象类
 *     version: 0.0.0.1
 * create date: 13:44 2012-1-15
 *      author: 段景洋
 */

class DBC {

    public $db = '';    //数据库对象
    public $lastsql = '';  //最后一次执行的SQL
    public $error = '';
    public $prefix = 'djy_';

    function PrefixReplace($strSql) {
        $strSql = str_replace("djy_", $this->prefix, $strSql);
        return $strSql;
    }

    /**
     * 建立数据库连接
     * @param type $db_type 链接类型
     * @param type $db_host 链接的host
     * @param type $db_user 数据库链接用户名
     * @param type $db_password 数据库密码
     * @param type $db_name 数据库名
     * @param type $db_prefix 前缀
     * @return type 返回链接对象
     */
    function __construct($db_type, $db_host, $db_user, $db_password, $db_name, $db_prefix) {
        $this->prefix = $db_prefix;
        if ($db_type == 'mysqli') {
            $this->db = mysql_pconnect($db_host, $db_user, $db_password);
        } else {
            $this->db = mysql_connect($db_host, $db_user, $db_password);
        }
        if (!$this->db) {
            $this->halt("Can not connect MySQL Server");
        }
        if (!@mysql_select_db($db_name, $this->db)) {
            $this->halt("Can not connect MySQL Database");
        }
        @mysql_unbuffered_query("SET NAMES UTF8");
    }

    /**
     * 数据库查询执行方法
     * @param type $sql 要执行的sql语句
     * @param type $type 
     * @return type
     */
    public function execute($sql, $type = 1) {
        $this->lastsql = $sql;
        $result = $type ? mysql_query($sql) : mysql_unbuffered_query($sql);
        !$result && $this->halt(mysql_error() . $sql);
//        write_log_file($sql); //sql记录
        return $result;
    }

    /**
     * 遍历mysql资源
     * @param type $result
     * @return type
     */
    public function fetch($result) {
        if ($result) {
            return mysql_fetch_array($result, MYSQL_ASSOC);
        } else {
            return array();
        }
    }

    /**
     * 数据库查询执行方法
     * @param type $sql 要执行的sql语句
     * @param type $type 
     * @return type
     */
    public function selectArray($sql) {
        $this->lastsql = $sql;

        $arr = array();
        if (DBCACHE) {
            $md5file = BASEPATH . '/data/cache/' . md5($this->lastsql) . '.php';
            $iscache = false; //判断缓存
            if (is_file($md5file)) {
                $fchange = filemtime($md5file);
                if ((time() - $fchange) < DBCACHETIME) {
                    $iscache = true;
                    $fd = file_get_contents($md5file);
                    $fd = substr($fd, 13, strlen($fd) - 13);
                    $arr = unserialize($fd); //反序列化
                }
            }
            if ($iscache == false) {
                $result = $this->execute($this->lastsql);
                $arr = array();
                while ($rs = $this->fetch($result)) {
                    $arr[] = $rs;
                }
                $this->free_result($result);
                file_put_contents($md5file, '<?php exit;?>' . serialize($arr));
            }
        } else {
            $result = $this->execute($this->lastsql);
            $arr = array();
            while ($rs = $this->fetch($result)) {
                $arr[] = $rs;
            }
            $this->free_result($result);
        }

        return $arr;
    }

    /**
     * 查询
     * @param type $arg_tables
     * @param type $fields
     * @param type $extra
     * @param type $limit
     * @param type $offset
     * @return type
     */
    public function selectArrayLimit($arg_tables, $fields = "*", $extra = "", $limit = 66, $offset = 0) {
        $this->lastsql = "select {$fields} from {$arg_tables} {$extra} limit {$offset},{$limit} ";


        $arr = array();
        if (DBCACHE) {
            $md5file = BASEPATH . '/data/cache/' . md5($this->lastsql) . '.php';
            $iscache = false; //判断缓存
            if (is_file($md5file)) {
                $fchange = filemtime($md5file);
                if ((time() - $fchange) < DBCACHETIME) {
                    $iscache = true;
                    $fd = file_get_contents($md5file);
                    $fd = substr($fd, 13, strlen($fd) - 13);
                    $arr = unserialize($fd); //反序列化
                }
            }
            if ($iscache == false) {
                $result = $this->execute($this->lastsql);
                $arr = array();
                while ($rs = $this->fetch($result)) {
                    $arr[] = $rs;
                }
                $this->free_result($result);
                file_put_contents($md5file, '<?php exit;?>' . serialize($arr));
            }
        } else {
            $result = $this->execute($this->lastsql);
            $arr = array();
            while ($rs = $this->fetch($result)) {
                $arr[] = $rs;
            }
            $this->free_result($result);
        }




        return $arr;
    }

    /**
     * 释放查询资源
     * @return void
     */
    public function free_result($result) {
        if (is_resource($result)) {
            @mysql_free_result($result);
        }
    }

    /**
     * 获取最后数据库操作影响到的条数
     * @return int
     */
    public function affectedRows() {
        return mysql_affected_rows($this->db);
    }

    /**
     * 事务开始
     * @param type $sql
     */
    function beginTransaction($sql) {
        $this->lastsql = $sql;
//        return $this->db->beginTransaction();
    }

    /**
     * 事务回滚
     * @param type $sql
     */
    function rollBack($sql) {
        $this->lastsql = $sql;
//        return $this->db->rollBack();
    }

    /**
     * 事务提交
     * @param type $sql
     */
    function commit($sql) {
        $this->lastsql = $sql;
//        return $this->db->commit();
    }

    /**
     * 关闭连接
     */
    public function close() {
        if (is_resource($this->db)) {
            @mysql_close($this->db);
        }
    }

    /**
     * 插入后的id
     * @return type
     */
    public function insertId() {
        return @mysql_insert_id($this->db);
    }

    /**
     * 服务的信息
     */
    public function info() {
        mysql_get_server_info($this->db);
    }

    /**
     * 显示错误
     * @param type $the_error
     */
    public function halt($the_error = "") {
        $message = $the_error . "<br/>\r\n";
        $message.= $this->get_error() . "<br/>\r\n";
        $sql = date('Y-m-d H:i:s') . '___' . $_SERVER["PHP_SELF"] . "___" . addslashes($message);

        write_dblog_file($sql);

        if (DEBUG == true) {
            echo "<html><head><title>MySQL 数据库错误</title>";
            echo "<style type=\"text/css\"><!--.error { font: 11px tahoma, verdana, arial, sans-serif, simsun; }--></style></head>\r\n";
            echo "<body>\r\n";
            echo "<blockquote>\r\n";
            echo "<textarea class=\"error\" rows=\"15\" cols=\"100\" wrap=\"on\" >" . htmlspecialchars($message) . "</textarea>\r\n";
            echo "</blockquote>\r\n</body></html>";
            exit;
        }
    }

    /**
     * 得到错误信息
     * @return type
     */
    public function get_error() {
        $this->errno = @mysql_errno($this->db);
        return $this->errno;
    }

    /**
     * 执行insert指令
     * @param type $arg_tables
     * @param type $fields
     * @param type $values
     * @return type 
     */
    function Insert($arg_tables, $fields, $values) {
        $arg_tables = $this->PrefixReplace($arg_tables);
        $this->lastsql = 'INSERT INTO ' . $arg_tables . ' (' . $fields . ')VALUES(' . $values . ')';
        // echo $this->lastsql ;
        // exit;
        return $this->execute($this->lastsql);
    }

    function InsertTbl($tblModel, $table) {
        $fieldname = array();
        $value = array();
        if (is_array($tblModel))
            foreach ($tblModel as $key => $v) {
                $value[] = $v;
                $fieldname[] = $key;
            }
        $fields = @implode(",", $fieldname);
        $values = @implode("','", $value);
        $values = "'$values'";
        return $this->Insert($table, $fields, $values);
    }

}
