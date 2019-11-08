/*
Title: tabPanel
Description: tabPanel
*/

# 功能描述
tabPanel是轻量级Tab选项卡组件，可定制，仅6kb

# 依赖模块
无

# 快速使用

```js
tabPanel({
    el: document.getElementById('wrap'),
    auto: true,
    bounces: true,
    tabWidth: document.body.clientWidth
})
```
## 配置项


### el
* 类型：HTMLElement
* 默认值：null
* 作用：选项卡区域
* 是否必传：是


### auto
* 类型：Boolean
* 默认值：true
* 作用：选项卡高度自适应
* 是否必传：否


### bounces
* 类型：Boolean
* 默认值：true
* 作用：选项卡回弹效果
* 是否必传：否


### slide
* 类型：Boolean
* 默认值：true
* 作用：滑动切换选项卡
* 是否必传：否


### tabWidth
* 类型：Number
* 默认值：文档宽度
* 作用：选项卡宽度
* 是否必传：否


# 特别说明
更多配置和用法，请参考examples