def product_except_self(nums)
  # mapで各インデックス(i)ごとの処理をする
  nums.each_with_index.map do |num, i|
    # 自分以外の要素を抽出する
    others = nums.dup             # 配列をコピー
    others.delete_at(i)           # i番目（自分）だけ消す
    others.inject(:*)             # 残りを全部かける
  end
end

# def product_except_self(nums)
#   nums.each do |num|
#     nums.slice!(num)
#     nums.inject(:*)
#     nums << num
#   end
# end

nums = [1,2,3,4]