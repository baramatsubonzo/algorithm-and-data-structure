def max_depth(root)
  return 0 if root.nil?

  left_max = max_depth(root.left)
  right_max = max_depth(root.right)

  left_max > right_max ? left_max + 1 : right_max + 1
end


# def max_depth(root)
#   return 0 if root.nil?
#   count = 0
#   count += 1
#   max_depth(root.left)
#   max_depth(root.right)
#   count
# end