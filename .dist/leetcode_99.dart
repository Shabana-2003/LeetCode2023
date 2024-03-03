/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
ListNode? removeNthFromEnd(ListNode? head, int n) {
  final dummy = ListNode(0, head);
  ListNode? left = dummy;
  ListNode? right = head;

  while(n > 0 && right != null) {
    right = right.next;
    n--;
  }
  while(right != null) {
    right = right.next;
    left = left?.next;
  }
  left?.next = left.next?.next;
  return dummy.next;
}
}