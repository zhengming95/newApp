<?php !defined("APPPATH") && exit();?><?php
require(dirname(__FILE__)."/".$args[2]."_var.php");$f = new Form();
$form_id = "form-" . mt_rand();
?>
<form action="<?php echo themeinfo('uri') . $args[0] . '/list/' . $args[2]; ?>" 
      method="post" 
      enctype="multipart/form-data" 
      id="<?php echo $form_id; ?>" 
      name="<?php echo $form_id; ?>"
      class="listform <?php echo $args[2]; ?>_listform">
  <input type="hidden" class="pagenum" class="hide" name="search[page]" value="1"/>
  <ul class="grid-24-23 search_area"  >        <li>
            标题                            <input type="text" class="input PostTitle" name="search[PostTitle]" value="<?php echo $search['PostTitle']; ?>"/>
                        </li>
        

<li>
    <input name="" type="submit" class="button" value="搜索" />
</li>
</ul>
<div class="clear"></div>
<div class="list-content">
    <table class="grid-24-23">
        <tr class="ui-accordion-header ui-helper-reset ui-state-default ui-state-active ui-corner-top list-table-title"><th class="list_sel_all title">全选</th><th>标题</th><th>时间</th><th>操作</th></tr>

<?php
$_i = true;
foreach ($ModelArr as $key => $value) {
  $ex_attr= unserialize($value['post_ex_attr']) ;

  if(is_string($ex_attr['Dict'])){
   $ex_attr=array();
    $ex_attr['Dict']=array();
  }else if(!is_array($ex_attr['Dict'])){
     $ex_attr=array();
    $ex_attr['Dict']=array();
  }
?>

<tr <?php
  echo $_i ? 'class="color"' : '';
  $_i = !$_i;
  ?> >
  <td class="list_sel_all center">
    <input type="checkbox"  value="<?php echo $value['post_id']; ?>" />
  </td><td><div class="center"><?php echo str_sub($value['post_title'], 50); ?></div></td>
<td><div class="center"><?php echo str_sub($value['post_date'], 50); ?></div></td>
<td><div class="center"> 

    <?php
    $config = array();
    $config['link'] = themeinfo('uri') . $args[0] . '/edit/' . $args[2] . '/' . $value['post_id'];
    $config['title'] = $value['post_title'] == "" ? "未定义" : $value['post_title'];
    $config['label'] = '修改';
    ?>
    <?php echo $f->applink($config); ?>
    <?php
    $config = array();
    $config['link'] = themeinfo('uri') . $args[0] . '/del/' . $args[2] . '/' . $value['post_id'];
    $config['title'] = $value['post_title'] == "" ? "未定义" : $value['post_title'];
    $config['id'] = $value['post_id'];
    ?>
    <?php echo $f->deletepost($config); ?>
  </div>
</td>
</tr>
<?php
}
?>
<tr class="list-table-title">
  <td colspan="7" >
    <div class="list_sel_all">

      <input name=""    type="button" class="button list_sel_all title" value="全选" />
      <input name="" id="<?php echo $form_id; ?>tocopy"   type="button" class="button" value="复制" />
      <input name="" id="<?php echo $form_id; ?>todelete" type="button" class="button" value="删除" />
    </div>
    <div class="clear"></div>
    <div class="center">
      <?php
      $p = $search['page'];
      unset($search['page']);
      $str = '?search[page]={id}';
      foreach ($search as $key => $value) {
      $str .='&search[' . $key . ']=' . $value;
      }
      echo page_show($str, $p, $search['dcount'], PAGELEN, $showNum = 9, $language = 'zh');
      ?>

    </div>
  </td>
</tr>
</table>
</div>
</form>  

<?php
require(themeinfo('path') . '/inc/footer_list_inner.php');
?>
