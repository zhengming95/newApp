<?php
!defined('APPPATH') && exit();
//加载公共类
M('CTRL_Member');
M('CTRL_MemberExAttr');
M('CTRL_Options');
M('CTRL_Posts');
M('CTRL_PostsExAttr');
M('CTRL_Relationships');
M('CTRL_Terms');
M('CTRL_Wgetlist');

//加载所有功能函数
require_cache(AUTOMODEL . '/functions/options.php');
require_cache(AUTOMODEL . '/functions/member.php');
require_cache(AUTOMODEL . '/functions/terms.php');
require_cache(AUTOMODEL . '/functions/posts.php');
