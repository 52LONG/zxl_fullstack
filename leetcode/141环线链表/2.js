 function ListNode(val) {
        this.val = val;
        this.next = null;
 }



var hasCycle = function(head) {
    let p1 = head;
    let p2 = head;
    while(p1 && p2 && p2.next) {
        p1 = p1.next
        p2 = p2.next.next
        if(p1 === p2) {
            return true;
        }
    }
    return false;
};
