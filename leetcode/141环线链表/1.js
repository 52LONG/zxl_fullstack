var hasCycle = function(head) {
    try {
         JSON.stringify(head)
         return false
     } catch {
         return true
     }
 
 };