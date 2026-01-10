def merge_two_lists(list1, list2)
  # 空のダミーノードを作成(新しいリストの出発点)
  dummy = ListNode.new(0)
  current_node = dummy

  while list1 && list2
    if list1.val <= list2.val
      current_node.next = list1
      list1 = list1.next
    else
      current_node.next = list2
      list2 = list2.next
    end

    current_node = current_node.next
  end
  current_node.next = list1 || list2
  dummy.next
end

