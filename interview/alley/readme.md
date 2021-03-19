- flex
    分割线打理的专业度
    flex 布局 
    display:inline-flex  子元素布局就由flex 接管
    .divider   border-right
    min-width 用法


- 扒小米官网
    yarn add koa
    yarn add koa-mount
    npm install koa-static


<script>
    //使用最多的标签
    // 1. 所有的标签：计数
    //最大的思路是JS 必考 reduce
    const maxBy =(list,keyBy) => list.reduce((x,y)=>keyBy(x)>keyBy(y)?x:y )
    function getFrequenTag(){
        //reduce 需要的数组
        const tags = [...document.querySelectorAll('*')].map(x => x.tagName).reduce((o,tag)=>{
            o[tag] = o[tag]?o[tag]+1:1;
            return o;
         },{});
        // console.log(tags);
        // console.log(Object.entries(tags)); //返回[a:1],[b:2]形式
         return maxBy(Object.entries(tags),tag => tag[1])
    }
    console.log(getFrequenTag());

</script>