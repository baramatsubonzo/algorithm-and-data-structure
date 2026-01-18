def product_except_self(nums)
  # mapで各インデックス(i)ごとの処理をする
  nums.each_with_index.map do |num, i|
    # 自分以外の要素を抽出する
    others = nums.dup             # 配列をコピー
    others.delete_at(i)           # i番目（自分）だけ消す
    others.inject(:*)             # 残りを全部かける
  end
end

def product_except_self(nums)
  n = nums.size
  res = Array.new(n, 1)

  # 1. 左側からの累積積を計算して入れる
  # i番目には、「iより左にある数字の積」が入る
  prefix = 1
  (0...n).each do |i|
    res[i] = prefix
    prefix *= nums[i]
  end

  # 2. 右側からの累積積を「今の結果」にかけ合わせていく
  # 後ろからループして、suffix（右側の積）を更新していく
  suffix = 1
  (n - 1).downto(0) do |i|
    res[i] *= suffix
    suffix *= nums[i]
  end

  res
end

# def product_except_self(nums)
#   nums.each do |num|
#     nums.slice!(num)
#     nums.inject(:*)
#     nums << num
#   end
# end

nums = [1,2,3,4]