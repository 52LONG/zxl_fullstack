
  function ListNode(val, next) {
     this.val = (val===undefined ? 0 : val)
     this.next = (next===undefined ? null : next)
  }
var reverseBetween = function(head, m, n) {
    if(m==n) return head;
    let dummy=new ListNode(0);
    dummy.next=head;
    //a和d 节点从虚拟节点开始移动到相应的位置
    let a=dummy,d=dummy;
    for(let i=0;i<m-1;i++){
       a=a.next; 
    } 
    for(let j=0;j<n;j++){
        d=d.next;
    }
    let b=a.next,c=d.next;
    for(let p=b,q=p.next;q!==c; ){
        let o=q.next;
        q.next=p;
        p=q,q=o;
    }
    a.next=d;
    b.next=c;
    return dummy.next;
 };
 console.log(reverseBetween([1,2,3,4,5,6,7],3,6));