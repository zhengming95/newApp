<?php

function page_show($pUrl, $curPage, $totalNum, $plen = 15, $showNum = 9, $language = 'zh') {

    $showSubNum = floor($showNum / 2);

    //如果只有一页则跳出函数：
    $pagenav = "";
    $pCount = ceil($totalNum / $plen);
    if ($pCount == 1) {
        return;
    }

    if ($language == 'zh') {
        $prevTxt = '上一页';
        $nextTxt = '下一页';
    } else {
        $prevTxt = 'PREV';
        $nextTxt = 'NEXT';
    }

    // $pagenav = "总计 $pCount 页&gt;&gt;当前是第 $curPage 页&gt;&gt;";
    //if ($pCount <= 1) return '';

    $urls = explode('{id}', $pUrl);
    $prepg = $curPage - 1; //上一页
    $nextpg = $curPage + 1;
    //计算结果串
    // for($i=1;$i<=$pCount;$i++){
    // if($i == $curPage){
    // $pagenav .= ' <a  style="color:#FFF;" href="'.$urls[0].'1'.$urls[1].'">'.$i.'</a> ';
    // }else{
    // $pagenav .= ' <a href="'.$urls[0].'1'.$urls[1].'">'.$i.'</a> ';
    // }
    // }
    /*
      <div class="product_notes">
      <div class="news_notes_left">共14条 每页8条 页次：1/2</div>
      <div class="news_notes_right"><a href="#">首页</a> <a href="#">尾页</a> <a href="#">上一页</a> <a href="#">下一页</a></div>
      </div>
     */
    $pagenav .= '<div class="page">';
    if ((int) $curPage != 1) {
        //$pagenav .= ' <a class="n" href="'.$urls[0].'1'.$urls[1].'">首页</a> '; 		
    }

    if ($curPage > 1) {
        $pagenav .= ' <a class="n" page="'.$prepg.'" href="' . $urls[0] . $prepg . $urls[1] . '">' . $prevTxt . '</a> ';
    }

    //$pCount=55;
    //$curPage = 54;
    $startpage = 1;
    $endpage = $pCount;

    if ($curPage > $showSubNum) {//当前页面比显示的一半大 
        if (($pCount - $curPage) > $showSubNum) {//右侧的数值比要显示的大
            $startpage = $curPage - $showSubNum;
            $endpage = $curPage + $showSubNum;
        } else {
            $startpage = $pCount - $showNum + 1;
            $endpage = $pCount;
            if ($startpage < 1) {
                $startpage = 1;
            }
        }
    } else {
        if (($pCount - $curPage) > $showSubNum) {//右侧的数值比要显示的大
            $startpage = 1;
            $endpage = $showNum;
            if ($endpage > $pCount) {
                $endpage = $pCount;
            }
        } else {
            $startpage = 1;
            $endpage = $pCount;
        }
    }
    if ((int) $startpage > 1) {
        $pagenav .= ' <a page="1"  href="' . $urls[0] . '1' . $urls[1] . '">1</a>...';
    }

    for ($i = $startpage; $i <= $endpage; $i++) {
        if ($i == $curPage) {
            $pagenav .= '<strong>' . $i . '</strong>';
        } else {
            $pagenav .= ' <a page="'.$i.'" href="' . $urls[0] . $i . $urls[1] . '">' . $i . '</a> ';
        }
    }


    if ($curPage < $pCount) {
        $pagenav .= ' <a  class="n"  page="'.$nextpg.'"  href="' . $urls[0] . $nextpg . $urls[1] . '">' . $nextTxt . '</a> ';
        // $pagenav .= ' <a href="'.$urls[0].$pCount.$urls[1].'">最末页</a> ';
    }

    // $pagenav .= '  
    // <div class="news_notes_left">共'.$pCount .'页 每页'. $plen.'条 页次：'.$curPage.'/'.$pCount.'</div>
    // <div class="news_notes_right"><a href="'. $urls[0].'1'.$urls[1].'">首页</a> <a href="'. $urls[0].$pCount.$urls[1].'">尾页</a> ';
    // if ($curPage > 1) {	
    // $pagenav .= ' <a href="'.$urls[0].'1'.$urls[1].'">第一页</a> ';
    // $pagenav .= ' <a href="'.$urls[0].$prepg.$urls[1].'">上一页</a> ';
    // }
    // if ($curPage < $pCount) {
    // $pagenav .= ' <a href="'.$urls[0].$nextpg.$urls[1].'">下一页</a> ';
    // $pagenav .= ' <a href="'.$urls[0].$pCount.$urls[1].'">最末页</a> ';
    // }	
    // $pagenav .= '</div>';
    // $pagenav .= ' ';

    $pagenav .= '</div>';


    // if ($curPage > 1) {	
    // $pagenav .= ' <a href="'.$urls[0].'1'.$urls[1].'">第一页</a> ';
    // $pagenav .= ' <a href="'.$urls[0].$prepg.$urls[1].'">上一页</a> ';
    // }
    // if ($curPage < $pCount) {
    // $pagenav .= ' <a href="'.$urls[0].$nextpg.$urls[1].'">下一页</a> ';
    // $pagenav .= ' <a href="'.$urls[0].$pCount.$urls[1].'">最末页</a> ';
    // }
    //下拉跳转列表，循环列出所有页码：
    // $pagenav .= "<select name='topage' onchange='window.location=this.value'>";
    // for ($i = 1; $i <= $pCount; $i++) {
    // if ($i == $curPage)		
    // $pagenav .= '<option value="'.$urls[0].$i.$urls[1].'" selected>第'.$i.'页</option>';
    // else
    // $pagenav .= '<option value="'.$urls[0].$i.$urls[1].'" >第'.$i.'页</option>';
    // }
    // $pagenav .= "</select> ";
    return $pagenav;
}

//echo page_show('/index.php?{id}', 8, 1000, 15, 9,'en');

function page_show_bootstrap($pUrl, $curPage, $totalNum, $plen = 15, $showNum = 9, $language = 'zh') {

    $showSubNum = floor($showNum / 2);

    //如果只有一页则跳出函数：
    $pagenav = "";
    $pCount = ceil($totalNum / $plen);
    if ($pCount == 1) {
        return;
    }

    if ($language == 'zh') {
        $prevTxt = '上一页';
        $nextTxt = '下一页';
    } else {
        $prevTxt = 'PREV';
        $nextTxt = 'NEXT';
    }

    // $pagenav = "总计 $pCount 页&gt;&gt;当前是第 $curPage 页&gt;&gt;";
    //if ($pCount <= 1) return '';

    $urls = explode('{id}', $pUrl);
    $prepg = $curPage - 1; //上一页
    $nextpg = $curPage + 1;
    //计算结果串
    // for($i=1;$i<=$pCount;$i++){
    // if($i == $curPage){
    // $pagenav .= ' <a  style="color:#FFF;" href="'.$urls[0].'1'.$urls[1].'">'.$i.'</a> ';
    // }else{
    // $pagenav .= ' <a href="'.$urls[0].'1'.$urls[1].'">'.$i.'</a> ';
    // }
    // }
    /*
      <div class="product_notes">
      <div class="news_notes_left">共14条 每页8条 页次：1/2</div>
      <div class="news_notes_right"><a href="#">首页</a> <a href="#">尾页</a> <a href="#">上一页</a> <a href="#">下一页</a></div>
      </div>
     */
    $pagenav .= '<ul>';
    if ((int) $curPage != 1) {
        //$pagenav .= ' <a class="n" href="'.$urls[0].'1'.$urls[1].'">首页</a> '; 		
    }

    if ($curPage > 1) {
        $pagenav .= '<li> <a class="n" href="' . $urls[0] . $prepg . $urls[1] . '">' . $prevTxt . '</a></li> ';
    }

    //$pCount=55;
    //$curPage = 54;
    $startpage = 1;
    $endpage = $pCount;

    if ($curPage > $showSubNum) {//当前页面比显示的一半大 
        if (($pCount - $curPage) > $showSubNum) {//右侧的数值比要显示的大
            $startpage = $curPage - $showSubNum;
            $endpage = $curPage + $showSubNum;
        } else {
            $startpage = $pCount - $showNum + 1;
            $endpage = $pCount;
            if ($startpage < 1) {
                $startpage = 1;
            }
        }
    } else {
        if (($pCount - $curPage) > $showSubNum) {//右侧的数值比要显示的大
            $startpage = 1;
            $endpage = $showNum;
            if ($endpage > $pCount) {
                $endpage = $pCount;
            }
        } else {
            $startpage = 1;
            $endpage = $pCount;
        }
    }
    if ((int) $startpage > 1) {
        $pagenav .= '<li> <a  href="' . $urls[0] . '1' . $urls[1] . '">1</a></li>';
    }

    for ($i = $startpage; $i <= $endpage; $i++) {
        if ($i == $curPage) {
            $pagenav .= '<li class="active"> <a href="' . $urls[0] . $i . $urls[1] . '">' . $i . '</a></li>';
        } else {
            $pagenav .= '<li> <a href="' . $urls[0] . $i . $urls[1] . '">' . $i . '</a> </li>';
        }
    }


    if ($curPage < $pCount) {
        $pagenav .= '<li> <a  class="n" href="' . $urls[0] . $nextpg . $urls[1] . '">' . $nextTxt . '</a> </li>';
        // $pagenav .= ' <a href="'.$urls[0].$pCount.$urls[1].'">最末页</a> ';
    }

    // $pagenav .= '  
    // <div class="news_notes_left">共'.$pCount .'页 每页'. $plen.'条 页次：'.$curPage.'/'.$pCount.'</div>
    // <div class="news_notes_right"><a href="'. $urls[0].'1'.$urls[1].'">首页</a> <a href="'. $urls[0].$pCount.$urls[1].'">尾页</a> ';
    // if ($curPage > 1) {	
    // $pagenav .= ' <a href="'.$urls[0].'1'.$urls[1].'">第一页</a> ';
    // $pagenav .= ' <a href="'.$urls[0].$prepg.$urls[1].'">上一页</a> ';
    // }
    // if ($curPage < $pCount) {
    // $pagenav .= ' <a href="'.$urls[0].$nextpg.$urls[1].'">下一页</a> ';
    // $pagenav .= ' <a href="'.$urls[0].$pCount.$urls[1].'">最末页</a> ';
    // }	
    // $pagenav .= '</div>';
    // $pagenav .= ' ';

    $pagenav .= '</ul>';


    // if ($curPage > 1) {	
    // $pagenav .= ' <a href="'.$urls[0].'1'.$urls[1].'">第一页</a> ';
    // $pagenav .= ' <a href="'.$urls[0].$prepg.$urls[1].'">上一页</a> ';
    // }
    // if ($curPage < $pCount) {
    // $pagenav .= ' <a href="'.$urls[0].$nextpg.$urls[1].'">下一页</a> ';
    // $pagenav .= ' <a href="'.$urls[0].$pCount.$urls[1].'">最末页</a> ';
    // }
    //下拉跳转列表，循环列出所有页码：
    // $pagenav .= "<select name='topage' onchange='window.location=this.value'>";
    // for ($i = 1; $i <= $pCount; $i++) {
    // if ($i == $curPage)		
    // $pagenav .= '<option value="'.$urls[0].$i.$urls[1].'" selected>第'.$i.'页</option>';
    // else
    // $pagenav .= '<option value="'.$urls[0].$i.$urls[1].'" >第'.$i.'页</option>';
    // }
    // $pagenav .= "</select> ";
    return $pagenav;
}

//echo page_show('/index.php?{id}', 8, 1000, 15, 9,'en');

