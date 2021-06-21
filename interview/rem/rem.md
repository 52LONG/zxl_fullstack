1. 单位
    绝对单位  px 移动物理像素密度
    相对单位  vw/vh rem em 100%   -> css适配问题 相对于我们要适配的机型要等比例的缩放
    100%（栅格系统10rem = 100vw） -> em 是自身字体的等比例（WEUI,缺点是麻烦）->
    rem(html根元素的字体大小) -> vw/vh (兼容性不行)

2. 动态rem 不同的手机 10rem = 100vw 做到等比例缩放
    1. 动态REM主要利用了rem = html:font-size = viewportWidth
    2. <script src="http://g.tbcdn.cn/mtb/lib-flexible/0.3.4/??flexible_css.js,flexible.js"></script>
    3. let pageWidth = window.innerWidth;
    document.write(`<style>html{font-size:${pageWidth/10}px;}</style>`)

3. 布局题
    div垂直居中 左右10px 高度始终为宽度的一半 使用vw/vh来实现
    



