# js 常考点
es6/红宝书 你不知道的JavaScript LeetCode codewars
单线程的语言 数据通信相关  
1. nmp init -y
2. npm i json-server
3. db.json 数据文件 json是js前端和后端通信的数据文件
    来个命令行，怎么启动db.json 成后台数据源
4. json-server --watch db.json   或$ json-server --watch --port 53000 db.json 修改成为53000端口
    http GET http://localhost:3000/users
    post 保存表单 name -> http://localhost:3000/users
5. npm run server:json
- promise 五星 异步  
    promise是什么？
    1、主要用于异步计算
    2、可以将异步操作队列化，按照期望的顺序执行，返回符合预期的结果
    3、可以在对象之间传递和操作promise，帮助我们处理队列

    为什么会有promise？
    为了避免界面冻结（任务）

    同步：假设你去了一家饭店，找个位置，叫来服务员，这个时候服务员对你说，对不起我是“同步”服务员，我要服务完这张桌子才能招呼你。那桌客人明明已经吃上了，你只是想要个菜单，这么小的动作，服务员却要你等到别人的一个大动作完成之后，才能再来招呼你，这个便是同步的问题：也就是“顺序交付的工作1234，必须按照1234的顺序完成”。

    异步：则是将耗时很长的A交付的工作交给系统之后，就去继续做B交付的工作，。等到系统完成了前面的工作之后，再通过回调或者事件，继续做A剩下的工作。
    AB工作的完成顺序，和交付他们的时间顺序无关，所以叫“异步”。
- postman 可以用来做HTTP访问代理
    post 那是再方便不过
    点body ，然后点x-www..
- 前端 +后端
    live-server http前端服务 index.html 8080
    json-server 后端数据 3000
    前端和后端要数据通信？
    前端去拉取后端的数据
    get 3000 /users
    post 1234 /users
- ajax 的表达式
    js 最重要的考点 XMLHttpRequest
    1. 是历史性的突破，带来前端主动请求数据的能力， 微博AJAX的应用
        前端更主动 ajax + DOM 页面变得丰富 动态
    2. http://localhost:3000/users 一切皆资源 Restfull 数据资源
        GET  请求动作 path/users  []
        POST 新增的 /users {name:'王嘉新'}
    3. XMLHttpRequest 的前身为 ActiveXObject("Microsoft.XMLHTTP")
            XMLHttpRequest 对象用于在后台与服务器交换数据。
            XMLHttpRequest 对象是开发者的梦想，因为您能够：
            在不重新加载页面的情况下更新网页
            在页面已加载后从服务器请求数据
            在页面已加载后从服务器接收数据
            在后台向服务器发送数据
            所有现代的浏览器都支持 XMLHttpRequest 对象

        - 创建 XMLHttpRequest 对象的语法：
            xmlhttp=new XMLHttpRequest();
        - 老版本的 Internet Explorer （IE5 和 IE6）使用 ActiveX 对象：
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
         但是这叫浏览器的嗅探 if else
        let httpRequest; HTTP协议 Request Response
        - 创建好对象
        - open('GET',"http://localhost:3000/users",true); 打开一个请求通道
        - httpRequest.send(); 这个请求发送
        -  httpRequest.onreadystatechange = function(){
            if( httpRequest.readyState == XMLHttpRequest.DONE){//完成了
                //来到前端
                let users = JSON.parse(httpRequest.responseText); //返回数据结果
                oUser.innerHTML = users.map(user =>`<li>${user.id} -${user.name} </li>`).join('');
            }
        }
        json 数组 -> HTML 数组 map `<li>${user.id} -${user.name} </li>`
        - innerHTML 属性设置或返回表格行的开始和结束标签之间的 HTML。
        - join() 方法用于把数组中的所有元素放入一个字符串。元素是通过指定的分隔符进行分隔的。
        - encodeURIComponent('支付宝')
        "%E6%94%AF%E4%BB%98%E5%AE%9D"
        - decodeURIComponent("%E6%94%AF%E4%BB%98%E5%AE%9D")
            "支付宝"        