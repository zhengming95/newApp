<?php !defined("APPPATH") && exit();?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="UTF-8">
    <title>数据库文档</title>
    <style type="text/css"> 
        table tr td{
            border: 1px slategrey solid;
        }
    </style>
</head>
<body>
    <h1>数据库文档</h1>
        <h2><span class="memo">用户</span></h2>
    <span>member</span>
    <table>
        <tr>
            <td width="300">名称</td>
            <td>字段名</td>
            <td>数据类型</td>
            <td>默认值</td>
            <td>允许为空</td>
        </tr>
        
        <tr>
            <td>用户的标识</td>
            <td>member_id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>NO</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_nicename</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>用户登录名称登录帐号</td>
            <td>member_name</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>密码</td>
            <td>member_password</td>
            <td>char(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>手机号</td>
            <td>member_mobile</td>
            <td>char(11)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>用户类型 1系统管理员 2编辑 3普通用户</td>
            <td>member_type</td>
            <td>char(20)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>邮箱</td>
            <td>member_email</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>附件属性</td>
            <td>member_ex_attr</td>
            <td>longblob</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>站点的标识</td>
            <td>site_id</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>用户状态</td>
            <td>member_status</td>
            <td>char(32)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_key1</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_key2</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_key3</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_key4</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_key5</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_key6</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_key7</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_key8</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_key9</td>
            <td>text</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_key10</td>
            <td>text</td>
            <td></td>
            <td>YES</td>
        </tr>
            </table>
    <h2><span class="memo">用户内容的附加字段</span></h2>
    <span>member_ex_attr</span>
    <table>
        <tr>
            <td width="300">名称</td>
            <td>字段名</td>
            <td>数据类型</td>
            <td>默认值</td>
            <td>允许为空</td>
        </tr>
        
        <tr>
            <td></td>
            <td>id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>NO</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_id</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_ex_attr_key</td>
            <td>char(30)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>member_ex_attr_value</td>
            <td>longblob</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>ex_attr_parent</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
            </table>
    <h2><span class="memo">自动生成id的表
每个表的主键都从这里取得 防止系统id重复</span></h2>
    <span>oid</span>
    <table>
        <tr>
            <td width="300">名称</td>
            <td>字段名</td>
            <td>数据类型</td>
            <td>默认值</td>
            <td>允许为空</td>
        </tr>
        
        <tr>
            <td>自动id</td>
            <td>id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>NO</td>
        </tr>
        
        <tr>
            <td>建立时间</td>
            <td>create_time</td>
            <td>datetime</td>
            <td></td>
            <td>NO</td>
        </tr>
        
        <tr>
            <td>什么类型的请求</td>
            <td>type</td>
            <td>varchar(32)</td>
            <td></td>
            <td>YES</td>
        </tr>
            </table>
    <h2><span class="memo">配置设置参数</span></h2>
    <span>options</span>
    <table>
        <tr>
            <td width="300">名称</td>
            <td>字段名</td>
            <td>数据类型</td>
            <td>默认值</td>
            <td>允许为空</td>
        </tr>
        
        <tr>
            <td>设置的标识</td>
            <td>option_id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>NO</td>
        </tr>
        
        <tr>
            <td>key</td>
            <td>option_key</td>
            <td>varchar(100)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>t</td>
            <td>option_value</td>
            <td>longblob</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>是否自动加载</td>
            <td>autoload</td>
            <td>char(10)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>用户的编号</td>
            <td>member_id</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>站点信息</td>
            <td>site_id</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>option_memo</td>
            <td>varchar(100)</td>
            <td></td>
            <td>YES</td>
        </tr>
            </table>
    <h2><span class="memo">信息内容表</span></h2>
    <span>posts</span>
    <table>
        <tr>
            <td width="300">名称</td>
            <td>字段名</td>
            <td>数据类型</td>
            <td>默认值</td>
            <td>允许为空</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>NO</td>
        </tr>
        
        <tr>
            <td>站点标识</td>
            <td>site_id</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>发布人信息</td>
            <td>member_id</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>别名</td>
            <td>post_alias</td>
            <td>varchar(32)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_title</td>
            <td>varchar(512)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>发布时间</td>
            <td>post_date</td>
            <td>datetime</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>关键词</td>
            <td>post_keyword</td>
            <td>varchar(512)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>摘要</td>
            <td>post_excerpt</td>
            <td>text</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>图片</td>
            <td>post_image</td>
            <td>varchar(512)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>分类</td>
            <td>post_category</td>
            <td>varchar(32)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>文章内容</td>
            <td>post_content</td>
            <td>longtext</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>发布状态</td>
            <td>post_status</td>
            <td>char(32)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>评论状态</td>
            <td>post_comment_status</td>
            <td>char(32)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>上一级页面id</td>
            <td>post_parent</td>
            <td>varchar(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>文章的类型</td>
            <td>post_type</td>
            <td>char(32)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>信息的mime信息</td>
            <td>post_mime_type</td>
            <td>char(32)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>点击量</td>
            <td>post_comment_count</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>其他附属属性</td>
            <td>post_ex_attr</td>
            <td>longblob</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>排序字段</td>
            <td>post_order</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_key1</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_key2</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_key3</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_key4</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_key5</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_key6</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_key7</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_key8</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_key9</td>
            <td>text</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_key10</td>
            <td>text</td>
            <td></td>
            <td>YES</td>
        </tr>
            </table>
    <h2><span class="memo">内容的附加字段</span></h2>
    <span>posts_ex_attr</span>
    <table>
        <tr>
            <td width="300">名称</td>
            <td>字段名</td>
            <td>数据类型</td>
            <td>默认值</td>
            <td>允许为空</td>
        </tr>
        
        <tr>
            <td></td>
            <td>id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>NO</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_id</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_ex_attr_key</td>
            <td>char(30)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>post_ex_attr_value</td>
            <td>longblob</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>ex_attr_parent</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>建立时间</td>
            <td>ex_attr_time</td>
            <td>datetime</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>ex_attr_key1</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>ex_attr_key2</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>ex_attr_key3</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>ex_attr_key4</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>ex_attr_key5</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
            </table>
    <h2><span class="memo">分组与信息内容的关联字段</span></h2>
    <span>relationships</span>
    <table>
        <tr>
            <td width="300">名称</td>
            <td>字段名</td>
            <td>数据类型</td>
            <td>默认值</td>
            <td>允许为空</td>
        </tr>
        
        <tr>
            <td></td>
            <td>id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>NO</td>
        </tr>
        
        <tr>
            <td></td>
            <td>object_id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>站点标识</td>
            <td>site_id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>YES</td>
        </tr>
            </table>
    <h2><span class="memo">类别 组别管理</span></h2>
    <span>terms</span>
    <table>
        <tr>
            <td width="300">名称</td>
            <td>字段名</td>
            <td>数据类型</td>
            <td>默认值</td>
            <td>允许为空</td>
        </tr>
        
        <tr>
            <td>分类id</td>
            <td>term_id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>NO</td>
        </tr>
        
        <tr>
            <td>分类类型</td>
            <td>term_type</td>
            <td>char(50)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>分类别名</td>
            <td>term_alias</td>
            <td>char(32)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>分类名称</td>
            <td>term_name</td>
            <td>varchar(100)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>上一级分类</td>
            <td>term_parent_id</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>分类描述</td>
            <td>term_description</td>
            <td>text</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>所属的站点</td>
            <td>site_id</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>当前状态</td>
            <td>term_status</td>
            <td>char(10)</td>
            <td>1</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>分类引用数量</td>
            <td>term_count</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_order</td>
            <td>bigint(20)</td>
            <td>0</td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_ex_attr</td>
            <td>longblob</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_key1</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_key2</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_key3</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_key4</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_key5</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_key6</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_key7</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_key8</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_key9</td>
            <td>text</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>term_key10</td>
            <td>text</td>
            <td></td>
            <td>YES</td>
        </tr>
            </table>
    <h2><span class="memo"></span></h2>
    <span>wgetlist</span>
    <table>
        <tr>
            <td width="300">名称</td>
            <td>字段名</td>
            <td>数据类型</td>
            <td>默认值</td>
            <td>允许为空</td>
        </tr>
        
        <tr>
            <td></td>
            <td>id</td>
            <td>bigint(20)</td>
            <td></td>
            <td>NO</td>
        </tr>
        
        <tr>
            <td></td>
            <td>url</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>pagetime</td>
            <td>datetime</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td>是否采集过 1,未采集，2采集过</td>
            <td>flag</td>
            <td>char(2)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>data</td>
            <td>longblob</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>exdata</td>
            <td>text</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>oid</td>
            <td>bigint(20)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>nid</td>
            <td>bigint(20)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>pid</td>
            <td>bigint(20)</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>olddata</td>
            <td>text</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>newdata</td>
            <td>text</td>
            <td></td>
            <td>YES</td>
        </tr>
        
        <tr>
            <td></td>
            <td>content_type</td>
            <td>varchar(255)</td>
            <td></td>
            <td>YES</td>
        </tr>
            </table>
    
</body>
</html>