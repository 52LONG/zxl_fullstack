function ListNode(val){
    this.val = val;
    this.next = null; // 指向下一个节点
}
const n1 = new ListNode(1);
const n2 = new ListNode(2);
const n3 = new ListNode(3);
const n4 = new ListNode(4);
const n5 = new ListNode(5);
n1.next = n2;
n2.next = n3;
n3.next = n4;
n4.next = n5;

var oddEvenList = function (head){
    //通过链表的一次遍历将奇偶节点分开放在两个数组
    //奇链表的尾节点指向偶数链表的节点
    //空间复杂度不是o(1) 不是原点
    if(!head || !head.next){
        return head
    }

    var odd = []; //奇数节点数组
    var even = []; // 偶数节点数组 
    var f = true; //奇偶标记变量

    while(head){
        var next =head.next;
        head.next = null; //将原来的关系打掉
        head = next;
        if(f){
        
            odd.push(head)

        }else{
            even.push(head);
        }
        f = !f;
        head = next;  
    }
    //重建两个分链表的顺序 原地算法
    for(var i = 0; i<odd.length-1;i++)
        odd[i].next = odd[i+1];
    for(var i =0 ; i< even.length-1;i++)
        even[i].next = even[i+1];
}


// 将奇链表的节点指向偶链表的头节点
odd[odd.length-1].next = even[0];
console.log(n1);