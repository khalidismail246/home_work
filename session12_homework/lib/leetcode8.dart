void main() {}

//Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

ListNode? reverseList(ListNode? head) {
  if (head == null || head.next == null) {
    return head;
  }
  ListNode? currNode = head;
  ListNode? prevNode;
  ListNode? nextNode = currNode.next;
  while (nextNode != null) {
    nextNode = currNode?.next;
    currNode?.next = prevNode;
    prevNode = currNode;
    currNode = nextNode;
  }
  return prevNode;
}
