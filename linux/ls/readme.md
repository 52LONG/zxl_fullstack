#  ls 

1. ls 是如何运作的，哪些常用的参数？
    在linu里一切皆为文件
    ls 文件列表？ ls /  / path 根路径
    - 理解根目录的一些意义
    /bin binary 二进制文件 全局的path ls cat
    /dev device
    /etc 配置文件 mysql ngnix
    /hosts 文件用来配置什么的？ 在哪个引用场景下使用 
    用于名字转换与ip地址的转换
    /usr 很多应用程序放在这个目录下
    /tmp 临时文件
    www.taobao.com IP dns 缓存->网络服务商
    host 文件 先来这里检测一下 
    127.0.0.1：1314 www.taobao.com:1314
    1. 你在淘宝做开发的时候
        wwww.babytree,com 本地 code mysql host
        git clone www.taobao.com  branch /search
        host 本地调试taobao 页面
        git push main master 远程服务器
    - ls -l 查看当前文件下的所有文件
    - drwxr-xr-x
        d:第一位表示文件类型。d是目录文件，l是链接文件，-是普通文件，p是管道
        rwx:第2-4位表示这个文件的属主拥有的权限，r是读，w是写，x是执行。
        r-x:第5-7位表示和这个文件属主所在同一个组的用户所具有的权限。
        r-x:第8-10位表示其他用户所具有的权限。
        r:read就是读权限--数字4表示
        w:write就是写权限--数字2表示
        x:excute就是执行权限--数字1表示
        -rw-r-r-- 用数字表示为644
        -rwxrwx--用数字表示770
        -rwx--x--x用数字表示711
