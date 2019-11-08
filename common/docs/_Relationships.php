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
            <td class="field"><input name="Id" class="Id input" value="{$relationships.id}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">object_id</td>
            <td class="field"></td>
            <td class="field"><input name="ObjectId" class="ObjectId input" value="{$relationships.object_id}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">term_id</td>
            <td class="field"></td>
            <td class="field"><input name="TermId" class="TermId input" value="{$relationships.term_id}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">site_id</td>
            <td class="field">站点标识</td>
            <td class="field"><input name="SiteId" class="SiteId input" value="{$relationships.site_id}"></td>          
        </tr>          
  </table>


</body>
</html>