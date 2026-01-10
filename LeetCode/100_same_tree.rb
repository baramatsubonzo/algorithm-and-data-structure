def is_same_tree(p, q)
  return true if p.nil? && q.nil?
  # p.val != q.val での比較がコア
  return false if p.nil? || q.nil? || p.val != q.val

  is_same_tree(p.left, q.left) && is_same_tree(p.right, q.right)
end

# def is_same_tree(p, q)
#   true if p.nil? || p.left.nil? && p.right.nil?

#   p.left == q.left
#   is_same_tree(p.left, q.left)
#   is_same_tree(p.right, q.right)
# end