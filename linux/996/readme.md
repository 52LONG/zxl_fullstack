linux + docker + k8s
- 文件系统 readme.md 输出到命令行
- git bash 是一个小型的linux
- seq 序列文件
    seq 10 20 >> spring
- cat>index.html <<EOF
    输入内容
   在输入EOF，结束输入 

- 基于996 文件 找到以996开头的这行内容
   正则 + linux  grep
   grep -rn '996' 查找文件内容包含‘996’的
   grep -r -l '996' 查找包含‘996’的文件
- | 管道 
    cat 996 | grep -E ^996 查找以996开始的文件内容
    cat 996 是打印996文件的内容 在通关管道
    -E 是后面匹配正则表达式 ^996 以996开始
    996$  以996结束
    cat 996 | grep -E icu+ 匹配包含icu的内容 u 至少出现一次或者多次
    cat 996 | grep -E [0-9] 匹配包含0-9的内容行
    cat 996 | grep -E ^[\^0-9] 
- \^ 转义字符   [^0-9]不是以什么开始，而是否定 不要匹配^[\^0-9]
-  cat 996 | grep -E -v [0-9]{3}
    -v是反向查找 {3}出现三个
    cat 996 | grep -E boss\|icu  包含boss或icu  \|是或者 需要加转义字符\
    




