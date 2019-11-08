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
            <td class="field"><input name="Id" class="Id input" value="{$wgetlist.id}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">url</td>
            <td class="field"></td>
            <td class="field"><input name="Url" class="Url input" value="{$wgetlist.url}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">pagetime</td>
            <td class="field"></td>
            <td class="field"><input name="Pagetime" class="Pagetime input" value="{$wgetlist.pagetime}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">flag</td>
            <td class="field">是否采集过 1,未采集，2采集过</td>
            <td class="field"><input name="Flag" class="Flag input" value="{$wgetlist.flag}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">data</td>
            <td class="field"></td>
            <td class="field"><input name="Data" class="Data input" value="{$wgetlist.data}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">exdata</td>
            <td class="field"></td>
            <td class="field"><input name="Exdata" class="Exdata input" value="{$wgetlist.exdata}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">oid</td>
            <td class="field"></td>
            <td class="field"><input name="Oid" class="Oid input" value="{$wgetlist.oid}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">nid</td>
            <td class="field"></td>
            <td class="field"><input name="Nid" class="Nid input" value="{$wgetlist.nid}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">pid</td>
            <td class="field"></td>
            <td class="field"><input name="Pid" class="Pid input" value="{$wgetlist.pid}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">olddata</td>
            <td class="field"></td>
            <td class="field"><input name="Olddata" class="Olddata input" value="{$wgetlist.olddata}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">newdata</td>
            <td class="field"></td>
            <td class="field"><input name="Newdata" class="Newdata input" value="{$wgetlist.newdata}"></td>          
        </tr>          
   
   		<tr class="column">
            <td class="name">content_type</td>
            <td class="field"></td>
            <td class="field"><input name="ContentType" class="ContentType input" value="{$wgetlist.content_type}"></td>          
        </tr>          
  </table>


</body>
</html>