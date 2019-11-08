<?php if(!class_exists('raintpl')){exit;}?><script id="inc/art" type="text/html">
    <h1 onclick="dianjishijian(5, this);">{{title}}</h1>
    <ul>
        {{each list as value i}}
        <li>索引 {{i + 1}} ：{{value}} {{value.aaa}}</li>
        {{/each}}
    </ul>
</script>

