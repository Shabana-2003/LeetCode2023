/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  bool isPalindrome(ListNode? head) {
   List<int>store=[];
   while(head!=null){
       store.add(head.val);
       head=head.next;
   }
   return store.join('')==store.reversed.join('');
  }
}