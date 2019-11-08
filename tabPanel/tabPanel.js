!(function ($, $doc) {
    $.tabPanel = function (opts) {
        var lastIdx = 0
        var autoSize = opts.auto
        if (autoSize === undefined) {
            autoSize = true
        }
        var bounces = opts.bounces
        if (bounces === undefined) {
            bounces = true
        }
        var slide = opts.slide
        if (slide === undefined) {
            slide = true
        }
        var windowWidth = opts.tabWidth || $doc.body.clientWidth; //window 宽度;
        var wrap = opts.el || $doc.body
        var tabClick = wrap.querySelectorAll('.tabClick')[0];
        var tabLi = tabClick.getElementsByTagName('li');
        var tabCon = wrap.querySelectorAll('.tabCon')[0];
        var tabBox = wrap.querySelectorAll('.tabBox')[0];
        var tabList = tabBox.querySelectorAll('.tabList');

        var lineBorder = wrap.querySelectorAll('.lineBorder')[0];
        var lineDiv = lineBorder.querySelectorAll('.lineDiv')[0];

        var tar = 0;
        var tarY = 0;
        var endX = 0;
        var dist = 0;
        var isLock = false
        var isLockX = false

        if (wrap !== $doc.body && wrap.parentElement !== $doc.body) {
            wrap.parentElement.addEventListener('touchmove', function (e) {
                if (isLockX) {
                    e.preventDefault()
                }
            }, false)
        }

        lineBorder.style.width = windowWidth + 'px'
        tabCon.style.width = windowWidth + 'px'
        tabBox.style.overflow = 'hidden';
        tabBox.style.position = 'relative';
        tabBox.style.width = windowWidth * tabList.length + "px";

        for (var i = 0; i < tabLi.length; i++) {
            tabList[i].style.width = windowWidth + "px";
            tabList[i].style.float = 'left';
            tabList[i].style.padding = '0';
            tabList[i].style.margin = '0';
            tabList[i].style.verticalAlign = 'top';
            tabList[i].style.display = 'table-cell';
        }

        var itemWidth = windowWidth / tabLi.length + 'px'
        lineDiv.style.width = itemWidth;
        for (var i = 0; i < tabLi.length; i++) {
            tabLi[i].start = i;
            tabLi[i].style.width = itemWidth;
            tabLi[i].onclick = function () {
                var star = this.start;
                for (var i = 0; i < tabLi.length; i++) {
                    tabLi[i].className = '';
                };
                tabLi[star].className = 'active';
                init.lineAnme(lineDiv, windowWidth / tabLi.length * star)
                init.translate(tabBox, windowWidth, star);
                endX = -star * windowWidth;
                if (autoSize) {
                    tabList[star].style.height = null
                    if (lastIdx !== star) {
                        setTimeout(() => {
                            tabList[lastIdx].style.height = '1px';
                            lastIdx = star;
                        }, 320);
                    }
                }
            }
        }

        function OnTab(star) {
            if (star < 0) {
                star = 0;
            } else if (star >= tabLi.length) {
                star = tabLi.length - 1
            }
            for (var i = 0; i < tabLi.length; i++) {
                tabLi[i].className = '';
            };
            tabLi[star].className = 'active';
            init.translate(tabBox, windowWidth, star);
            endX = -star * windowWidth;
            if (autoSize) {
                tabList[star].style.height = null
                if (lastIdx !== star) {
                    setTimeout(() => {
                        tabList[lastIdx].style.height = '1px'
                        lastIdx = star;
                    }, 320);
                }
            }
        };

        tabBox.addEventListener('touchstart', chstart, false);
        tabBox.addEventListener('touchmove', chmove, false);
        tabBox.addEventListener('touchend', chend, false);
        //按下
        function chstart(ev) {
            ev.preventDefault;
            if(!slide) {
                return
            }
            var touch = ev.touches[0];
            tar = touch.pageX;
            tarY = touch.pageY;
            tabBox.style.webkitTransition = 'all 0s ease-in-out';
            tabBox.style.transition = 'all 0s ease-in-out';
        };
        //滑动
        function chmove(ev) {
            if(!slide) {
                return
            }
            if (isLock) {
                return
            }
            var stars = wrap.querySelector('.active').start;
            ev.preventDefault;
            var touch = ev.touches[0];
            var distance = touch.pageX - tar;
            var distanceY = touch.pageY - tarY;
            dist = distance;
            if (!bounces) {
                if (distance > 0 && stars === 0) {
                    return
                }
                if (distance < 0 && stars === tabLi.length - 1) {
                    return
                }
            }
            var x = Math.abs(distance)
            var y = Math.abs(distanceY)
            // var min = document.documentElement.clientWidth * 0.1
            if (x > y) {
                // if (x - y > min) {
                isLockX = true
                init.touchs(tabBox, windowWidth, tar, distance, endX);
                init.lineAnme(lineDiv, -dist / tabLi.length - endX / tabLi.length);
                // }
            } else {
                if (!isLockX) {
                    isLock = true
                }
            }
        };
        //离开
        function chend(ev) {
            isLock = false
            isLockX = false
            if(!slide) {
                return
            }
            var str = tabBox.style.transform;
            var strs = JSON.stringify(str.split(",", 1));
            endX = Number(strs.substr(14, strs.length - 18));

            if (endX > 0) {
                init.back(tabBox, windowWidth, tar, 0, 0, 0.3);
                endX = 0
            } else if (endX < -windowWidth * tabList.length + windowWidth) {
                endX = -windowWidth * tabList.length + windowWidth
                init.back(tabBox, windowWidth, tar, 0, endX, 0.3);
            } else if (dist < -windowWidth / 3) {
                OnTab(tabClick.querySelector('.active').start + 1);
                init.back(tabBox, windowWidth, tar, 0, endX, 0.3);
            } else if (dist > windowWidth / 3) {
                OnTab(tabClick.querySelector('.active').start - 1);
            } else {
                OnTab(tabClick.querySelector('.active').start);
            }
            var stars = wrap.querySelector('.active').start;
            init.lineAnme(lineDiv, stars * windowWidth / tabLi.length);

        };
    };

    var init = {
        translate: function (obj, windowWidth, star) {
            obj.style.webkitTransform = 'translate3d(' + -star * windowWidth + 'px,0,0)';
            obj.style.transform = 'translate3d(' + -star * windowWidth + ',0,0)px';
            obj.style.webkitTransition = 'all 0.3s ease-in-out';
            obj.style.transition = 'all 0.3s ease-in-out';
        },
        touchs: function (obj, windowWidth, tar, distance, endX) {
            obj.style.webkitTransform = 'translate3d(' + (distance + endX) + 'px,0,0)';
            obj.style.transform = 'translate3d(' + (distance + endX) + ',0,0)px';
        },
        lineAnme: function (obj, stance) {
            obj.style.webkitTransform = 'translate3d(' + stance + 'px,0,0)';
            obj.style.transform = 'translate3d(' + stance + 'px,0,0)';
            obj.style.webkitTransition = 'all 0.1s ease-in-out';
            obj.style.transition = 'all 0.1s ease-in-out';
        },
        back: function (obj, windowWidth, tar, distance, endX, time) {
            obj.style.webkitTransform = 'translate3d(' + (distance + endX) + 'px,0,0)';
            obj.style.transform = 'translate3d(' + (distance + endX) + ',0,0)px';
            obj.style.webkitTransition = 'all ' + time + 's ease-in-out';
            obj.style.transition = 'all ' + time + 's ease-in-out';
        },
    }
})(window, document)
