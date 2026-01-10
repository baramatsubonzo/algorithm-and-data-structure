# BFS
def invert_tree(root)
  return nil if root.nil?

  queue = [root]

  while !queue.empty?
    # 先頭を取り出す
    current = queue.shift

    # 入れ替え処理
    temp = current.left
    current.left = current.right
    current.right = temp

    # 子ノードはqueueに入れる
    queue.push(current.left) if current.left
    queue.push(current.right) if current.right
  end

  root
end

# DFS
def invert_tree(root)
  return nil if root.nil?
  temp = root.left
  root.left = root.right
  root.right = temp

  invert_tree(root.left)
  invert_tree(root.right)

  root
end

# def invert_tree(root)
#   current_node = root
#   while current_node.left
#     current_node.left = current_node.right
#   end
# end