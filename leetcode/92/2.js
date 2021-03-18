var reverseBetween = function(head, left, right) {
    let start = new ListNode(0);
    start.next = head;
    let prev = start
    for(let i = 1; i < left; i++){
      prev = prev.next;
    }
    head = prev.next;
    for(let i = left; i < right; i++){
      let nextNode = head.next;
      head.next = nextNode.next;
      nextNode.next = prev.next;
      prev.next = nextNode;
    }
  
    return start.next;
  };