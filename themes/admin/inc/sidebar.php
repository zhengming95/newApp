<?php  !defined('APPPATH') && exit();?>
<div id="sidebar" class="ui-widget-content">
    <div class="content">
        <div id="accordion">
            <?php
            $Ctrl = new CTRL_Terms();
            $Ctrl->setTermType('type_menu');
            $Ctrl->setTermParentId(0);

            $rs = terms_draw($Ctrl, '', '', "array", FALSE);
            foreach ($rs as $key => $value) {
                ?>
                <div>
                    <h3><a href="#"><?php echo $value["term_name"]; ?></a></h3>
                    <div>
                        <ul class="sidebar">
                            <?php
                            $Ctrl = new CTRL_Terms();
                            $Ctrl->setTermType('type_menu');
                            $Ctrl->setTermParentId($value["term_id"]);
                            $rs2 = terms_draw($Ctrl, '', '', "array", FALSE);

                            foreach ($rs2 as $key1 => $value1) {
                                
                                $_url = $value1["term_key2"];
                                if(substr($_url, 0, 1) == '/'){
                                    $_url = substr($_url, 1);
                                }
                                
                                ?>
                                <li class="app-link"  app-title="<?php echo $value1["term_name"]; ?>" app-href="<?php echo $_url; ?>"><?php echo $value1["term_name"]; ?></li>    
                                    <?php
                                }
                                ?>                            
                        </ul>
                    </div>
                </div>
                <?php
            }
            ?>
        </div>
    </div>
</div>
