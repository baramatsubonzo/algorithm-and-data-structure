def reverse_list(head)
  prev_node = nil
  current_node = head

  while current_node
    next_node = current_node.next
    current_node.next = prev_node
    prev_node = current_node
    current_node = next_node
  end
  prev_node
end


# def reverse_list(head)
#   head.reverse
# end


p reverse_list(head)