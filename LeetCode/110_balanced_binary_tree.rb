def is_balanced(root)
  return true if root.nil?

  left_height = get_max_depth(root.left)
  right_height = get_max_depth(root.right)

  (left_height - right_height).abs <= 1 &&
    is_balanced(root.left) &&
    is_balanced(root.right)
end

def get_max_depth(node)
  return 0 if node.nil?
  [get_max_depth(node.left), get_max_depth(node.right)].max + 1
end


# def is_balanced(root)
#   return true if root.nil? || root.count == 1

#   left_count = 0
#   left_count += 1 if root.left

#   right_count = 0
#   right_count += 1 if root.right

#   while left_count - right_count == 2
#     is_balanced(root.left)
#     is_balanced(root.right)
#   end
#   left_count
# end