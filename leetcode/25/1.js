function ListNode(val){
    this.val = val;
    this.next = null; 
}

var n1 = new ListNode(1);
var n2 = new ListNode(2);
var n3 = new ListNode(3);
var n4 = new ListNode(4);
var n5 = new ListNode(5);
n1.next = n2;
n2.next = n3;
n3.next = n4;
n4.next = n5;
// console.log(n1);
var reverseKGroup = function (head,k){
    if(!head || k== 1){//空链表 k 为1
        return head;
    }
    var dummy = {//哨兵节点
        next: head
    }
    //reverse
    var start = dummy; // 初始化时为dummy，动态 之后会变成每个小组的开始节点
    var end = head;//和k相关 初始化 指向小组的第一个节点
    var count = 0;//计数
    while(end != null){//一次遍历
        count++;
        if(count % k == 0){//整数 要翻转 得到一个小组
            // if(count < 3){
            //     console.log(start.val,end.next.val);
            // }
            //更新start 一次翻转后 start 应该是这次翻转的尾节点
           start = reverse(start,end.next)//将这个小组翻转一下,翻转后的小组要能和其它小组链上
            end = start.next;//第一个节点
        }else{
           end = end.next;//慢慢更新end 的值 
        }
        
    }
    return dummy.next;
}

//start ,end 是要reverse的
var reverse = function(start,end){
    var curr = start.next;//头结点
    var prev = start;//前驱接点
    var first = curr; //保存第一个结点 尾结点 下一组的头指针
    while(curr != end){ // end 3 当前小组的[1,2]
        var temp = curr.next;//trmp 下一个结点来
        curr.next = prev; //reverse 
        prev = curr; // 当前节点变成下一此的前驱节点
        curr = temp; //当前节点为下一个节点
    } 
    start.next = prev;
    first.next = curr;//原来的头结点变成尾结点
    //小组之间链起来，上一次的尾结点指向下一个小组的开始节点
    return first;
}
console.log(n1,3);