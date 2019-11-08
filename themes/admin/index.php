<?php
!defined('APPPATH') && exit();
the_header(); ?>
<div id="container">
    <div id="content">
        <div id="tabs">
            <ul>
                <li><a href="#tabs-about">欢迎</a></li>
            </ul>
            <div id="tabs-about" class="welcome">               
                <?php the_about(); ?>
            </div>			
        </div>
    </div>
    <?php the_sidebar(); ?>	
</div>
<div id="dialog_del">
    删除后不可恢复，确定要删除？
</div>

<?php the_footer(); ?>