# 排序算法

冒泡 时间复杂度最慢 O（n^2） 最快O（n）
选择
插入  前面是有序，后面是无序的   从第二个和前面的比较，再第三个和前面的比。。依次类推
shell排序
快速排序
四路归并
堆排序


基数排序
计数排序
桶排序


递归遍历树的空间复杂度  log2 n   n为树的高度
内存分配
高地址 -> 低地址
依次为 栈 堆 Data Text
创建函数和局部变量在栈上
动态分配的空间 malloc calloc new 在堆上

Data
静态分配的空间 如字符串 全局变量

Text
机器运行时 只读
存放程序和常量


堆排序
一定是完全二叉树
二叉堆只能保证根节点最大（最大堆）或最小（最小堆）
构造二叉堆
拿出根节点的值再平衡二叉堆（拿最后面的叶子节点到根节点，再平衡将最小的数值放到最上面的根节点中） ，每次得到新的二叉堆，依次得到最大值或最小值 
找出最后一个非叶子节点 是最后一个叶子节点的根节点



