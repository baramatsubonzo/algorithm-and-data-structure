def diameter_of_binary_tree(root)
  @max_diameter = 0

  get_height(root)

  @max_diameter
end

private
def get_height(node)
  return 0 if node.nil?

  left_h = get_height(node.left)
  right_h = get_height(node.right)

  #直径 = 左の高さ + 右の高さ
  current_diameter = left_h + right_h

  @max_diameter = [@max_diameter, current_diameter].max
  #親ノードには自身の高さを報告する
  [left_h, right_h].max + 1
end
