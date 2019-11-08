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
            <td class="field">自动id</td>
            <td class="field"><input name="Id" class="Id input" value="{$oid.id}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">create_time</td>
            <td class="field">建立时间</td>
            <td class="field"><input name="CreateTime" class="CreateTime input" value="{$oid.create_time}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">type</td>
            <td class="field">什么类型的请求</td>
            <td class="field"><input name="Type" class="Type input" value="{$oid.type}"></td>          
        </tr>          
  </table>


</body>
</html>