<?php

!defined('APPPATH') && exit();

class Term extends Controller {

    public function _list($args) {
        global $args, $search;

        $Ctrl = new CTRL_Terms();

        $Ctrl->setTermAlias($args[2]);
        $Ctrl->setTermType('type_dict');
        $rs = $Ctrl->selectDB();

        if (!isset($rs[0]['term_id'])) {
            exit(0);
        }

        $pid = $rs[0]['term_id'];
		
		// var_dump($args);

        $where = " where term_type ='type_dict'";

		
		if(is_array($search["Dict"]) && count($search["Dict"])>0){
			foreach($search['Dict'] as $key=>$value){
				if((int)$value>0){
					$search['TermParentId']=$value;
				}				
			}
		}	
		
		
		
        if (isset($search['TermParentId']) && (int) $search['TermParentId'] > 0) {
            $where .= ' and term_parent_id like ' . "'" . $search['TermParentId'] . "'";
        } else {
            $where .= ' and term_parent_id =' . $pid . ' ';
        }

        if (isset($search['TermName']) && $search['TermName'] != '') {
            $where .= ' and term_name like ' . "'%" . $search['TermName'] . "%' ";
        }

//    if (isset($search['TermParentId']) && (int) $search['TermParentId'] > 0) {
//        $where .= ' and term_parent_id like ' . "'" . $search['TermParentId'] . "'";
//    }

        $rs = $Ctrl->selectArrayLimit($Ctrl->tableName, "count(1) as len", $where, 1, 0); //计算数量
        if (isset($rs[0]["len"])) {
            $search['dcount'] = $rs[0]["len"];
        }
        $rs = $Ctrl->selectArrayLimit($Ctrl->tableName, " * ", $where, $search['pagelen'], $search['start']); //分页数据
        $ModelArr = $rs;
//    echo $Ctrl->lastsql();
//        $rsdata = array();
//        foreach ($rs as $value) {
//            $Ctrl->_arr_toDb($value);
//            $rsdata[] = clone $Ctrl->db_model; //克隆一个         
//        }
//        $ModelArr = $rsdata;
//    echo $Ctrl->lastsql();
        if (is_file(themeinfo('admin') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php')) {
            require (themeinfo('admin') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        } else if (is_file(themeinfo('path') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php')) {
            require (themeinfo('path') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        } else {
            require (BASEPATH . '/data/' . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php');
        }
    }

    /**
     * 编辑选项
     * @global type $args
     */
    public function _edit() {
        global $args;

        $Ctrl = new CTRL_Terms();

        $Ctrl->setTermAlias($args[2]);
        $Ctrl->setTermType('type_dict');
        $rs = $Ctrl->selectDB();

        if (!isset($rs[0]['term_id'])) {
            exit(0);
        }

        $pid = $rs[0]['term_id'];


        $Ctrl = new CTRL_Terms();
        $Ctrl->setTermType('type_dict');

        if ((int) $args[3] == 0) {
            $_Model = $Ctrl;
        } else {
            $Ctrl->setTermId((int) $args[3]);
            $rs = $Ctrl->selectDB();
            $rsdata = array();
            foreach ($rs as $value) {
                $Ctrl->_arr_toDb($value);
                $rsdata[] = clone $Ctrl->db_model; //克隆一个         
            }
            $_Model = $rsdata[0];
        }

        $_Model = $_Model ? $_Model : $Ctrl;
        if (is_file(themeinfo('admin') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php')) {
            require (themeinfo('admin') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        } else if (is_file(themeinfo('path') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php')) {
            require (themeinfo('path') . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php' );
        } else {
            require (BASEPATH . '/data/' . $args[0] . '/' . $args[2] . '_' . $args[1] . '.php');
        }
    }

    /**
     * 保存更新
     * @global type $args
     */
    public function _save() {
        if (isset($_POST['Dict'])) {
            foreach ($_POST['Dict'] as $key => $value) {
                if((int)$value > 0){
					 $_POST['TermParentId']=(int)$value;
				}
            }
        }
        global $args;
        $Ctrl = new CTRL_Terms();

        $Ctrl->setTermAlias($args[2]);
        $Ctrl->setTermType('type_dict');
        $rs = $Ctrl->selectDB();

        if (!isset($rs[0]['term_id'])) {
            exit(0);
        }

        $pid = $rs[0]['term_id'];

        $Ctrl = new CTRL_Terms();

        $Ctrl->setTermType('type_dict');

        $_POST['TermParentId'] = (int) $_POST['TermParentId'];
        if ((int) $_POST['TermId'] == 0) {
            unset($_POST['TermId']);
            $Ctrl->set($_POST);
            $Ctrl->setTermId(djy_oid('term_' . $args[2]));
            $Ctrl->insertDB();
            $Ctrl->setTermId($Ctrl->insert_ID());
        } else {
            $Ctrl->set($_POST);
            $Ctrl->setTermId(str_encode($_POST['TermId']));
            $Ctrl->updateDB();
        }
//        echo $Ctrl->lastsql();
        $_Model = $_Model ? $_Model : $Ctrl;

        if (is_file(themeinfo('admin') . $args[0] . '/' . $args[2] . '_edit.php')) {
            require (themeinfo('admin') . $args[0] . '/' . $args[2] . '_edit.php' );
        } else if (is_file(themeinfo('path') . $args[0] . '/' . $args[2] . '_edit.php')) {
            require (themeinfo('path') . $args[0] . '/' . $args[2] . '_edit.php' );
        } else {
            require (BASEPATH . '/data/' . $args[0] . '/' . $args[2] . '_edit.php');
        }
    }

    /**
     * 删除
     * @global type $args
     */
    public function _del() {
        global $args;
        if ((int) $args[3] == (int) $_POST['_id']) {
            // $Ctrl = new CTRL_Posts();
            // $Ctrl->setPostId((int) $args[3]);
            // echo Del($Ctrl);
            if (isset($args[3])) {
                $Ctrl = new CTRL_Terms();
                $Ctrl->setTermId((int) $args[3]);
                echo $Ctrl->deleteDB();
            } else {
                $Ctrl = new CTRL_Terms();
                $Ctrl->setTermId((int) $args[2]);
                echo $Ctrl->deleteDB();
            }
        } else {
            echo '2';
        }
    }

    /**
     * 复制
     * @global type $args
     */
    public function _copy() {
        global $args;
        if ((int) $args[3] == (int) $_POST['_id']) {
            $Ctrl = new CTRL_Posts();
            $Ctrl->setPostId((int) $args[3]);
            echo Del($Ctrl);
        } else {
            echo '2';
        }
    }

}
