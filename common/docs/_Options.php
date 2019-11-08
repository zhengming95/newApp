<?php !defined("APPPATH") && exit();?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <title>帮助文档</title>    
</head>
<body>

<table> 

  
   		<tr class="column">
            <td class="name">option_id</td>
            <td class="field">设置的标识</td>
            <td class="field"><input name="OptionId" class="OptionId input" value="{$options.option_id}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">option_key</td>
            <td class="field">key</td>
            <td class="field"><input name="OptionKey" class="OptionKey input" value="{$options.option_key}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">option_value</td>
            <td class="field">t</td>
            <td class="field"><input name="OptionValue" class="OptionValue input" value="{$options.option_value}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">autoload</td>
            <td class="field">是否自动加载</td>
            <td class="field"><input name="Autoload" class="Autoload input" value="{$options.autoload}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">member_id</td>
            <td class="field">用户的编号</td>
            <td class="field"><input name="MemberId" class="MemberId input" value="{$options.member_id}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">site_id</td>
            <td class="field">站点信息</td>
            <td class="field"><input name="SiteId" class="SiteId input" value="{$options.site_id}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">option_memo</td>
            <td class="field"></td>
            <td class="field"><input name="OptionMemo" class="OptionMemo input" value="{$options.option_memo}"></td>          
        </tr>          
  </table>


</body>
</html>