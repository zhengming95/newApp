<?php !defined("APPPATH") && exit();?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <title>帮助文档</title>    
</head>
<body>

<table> 

  
   		<tr class="column">
            <td class="name">id</td>
            <td class="field"></td>
            <td class="field"><input name="Id" class="Id input" value="{$member_ex_attr.id}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">member_id</td>
            <td class="field"></td>
            <td class="field"><input name="MemberId" class="MemberId input" value="{$member_ex_attr.member_id}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">member_ex_attr_key</td>
            <td class="field"></td>
            <td class="field"><input name="MemberExAttrKey" class="MemberExAttrKey input" value="{$member_ex_attr.member_ex_attr_key}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">member_ex_attr_value</td>
            <td class="field"></td>
            <td class="field"><input name="MemberExAttrValue" class="MemberExAttrValue input" value="{$member_ex_attr.member_ex_attr_value}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">ex_attr_parent</td>
            <td class="field"></td>
            <td class="field"><input name="ExAttrParent" class="ExAttrParent input" value="{$member_ex_attr.ex_attr_parent}"></td>          
        </tr>          
  </table>


</body>
</html>