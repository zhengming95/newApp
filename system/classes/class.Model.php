<?php

class Model {

    public static $dbc;
    public $tableName;
    public $db_model;

    public function __construct() {
        $this->tableName = '';
        $this->db_model = new DB_Model();
    }

    public function check($value, $dbtype, $default, $isnull) {
        $t = strtolower($dbtype);
        $rev = null;
        if ($value == '') {
            $rev = $default;
            if (strpos($t, 'time') !== false) {
//                $rev = db_now();
            } else if (strpos($t, 'int') !== false) {
                $rev = (int) $value;
            }
        } else {
            $rev = $value;
        }

        //	$default = strtolower($default);
        //	$isnull = strtolower($isnull);	
        //	$rev =null;
        //	if ($isnull == 'yes') {
        //	if (strpos( $t,'time') === false) {
        //	$rev = $value;
        //	} else {
        //	$rev = $value;
        //	}			  
        //	} else {
        //	echo ($default);
        //	}

        return $rev;
    }

    public function insertDB() {
        if (isset($this->db_model->_key)) {
            unset($this->db_model->_key);
        }
        return $this->insertTbl($this->_db_toArr());
    }

    public function deleteDB() {
        return $this->deleteTbl($this->_db_toArr());
    }

    public function selectDB() {
        $extra = '';
        foreach ($this->db_model as $k => $v) {
            if ($k != '_key') {
                if ($v != "") {
                    if ($extra == '') {
                        $extra = ' where ' . $k . ' = ' . "'$v'";
                    } else {
                        $extra .=' AND ' . $k . ' = ' . "'$v'";
                    }
                }
            }
        }
        return $this->selectArrayLimit($this->tableName, "*", $extra, 100);
    }

    public function updateDB() {
        return $this->updateTbl($this->_db_toArr(), '');
    }

    public function updateDBEX($extra) {
        return $this->updateTbl($this->_db_toArr(), '');
    }

    function insert_ID() {
        return self::$dbc->insertId();
    }

    function lastsql() {
        return self::$dbc->lastsql;
    }

    public function _db_toArr() {
        $tblModel = array();
//    var_dump($this->db_model);
        foreach ($this->db_model as $key => $value) {
            if (!is_null($value)) {
                $tblModel[$key] = $value;
            }
        }
        return $tblModel;
    }

    public function _arr_toDb($arr) {
        foreach ($this->db_model as $key => $value) {
            if ($key != '_key') {
                $this->db_model->$key = @$arr[$key];
            }
        }
    }

    public function selectArrayLimit($arg_tables, $what = "*", $extra = '', $nrows = 66, $offset = 0) {
        return self::$dbc->selectArrayLimit($arg_tables, $what, $extra, $nrows, $offset);
    }

    public function execute($sql) {
        return self::$dbc->execute($sql);
    }

    public function selectArray($sql) {
        return self::$dbc->selectArray($sql);
    }

    //插入
    public function insertTbl($tblModel) {
        return self::$dbc->InsertTbl($tblModel, $this->tableName);
    }

    //插入
    public function updateTbl($tblModel) {
        $sql = 'UPDATE ' . $this->tableName . ' SET ';

        $key = $this->db_model->_key;
        $value = '';
        $extra = '';
        foreach ($this->db_model as $k => $v) {

            if ($k != '_key' && $k != $key) {
                if ($v != "") {
                    if ($extra == '') {
                        $extra = ' ' . $k . '=' . "'$v'";
                    } else {
                        $extra .=',' . $k . '=' . "'$v' ";
                    }
                }
            } else {
                if ($k == $key) {
                    $value = $v;
                }
            }
        }

        $sql = $sql . $extra . ' where ' . $this->db_model->_key . '=' . (int) $value;
//    var_dump($sql);exit;
        return $this->execute($sql);
//    return self::$dbc->updateTbl($tblModel, $this->tableName);
    }

    public function deleteTbl($tblModel) {
        $sql = 'delete from ' . $this->tableName . ' ';

        $extra = '';
        foreach ($this->db_model as $k => $v) {
            if ($k != '_key') {
                if ($v != "") {
                    if ($extra == '') {
                        $extra = ' where ' . $k . ' = ' . "'$v'";
                    } else {
                        $extra .=' AND ' . $k . ' = ' . "'$v'";
                    }
                }
            }
        }
        $sql .= $extra;
//        echo $sql;exit;
        return $this->execute($sql);
    }

}
