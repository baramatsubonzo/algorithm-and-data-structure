n = gets.to_i
# 1つ目の価格を「現在の最小値」の初期値とする
min_v = gets.to_i
# 最大利益の初期値
# マイナスの場合も考え、十分小さな負の数で初期化
max_v = -1_000_000_000

(n - 1).times do
  current_price = gets.to_i

  # 1. 最大利益を更新 (「今の価格 - これまでの最小値」と「これまでの最大利益」)
  max_v = [max_v, current_price - min_v].max
  # 2. 最小値を更新（「今の価格」と「これまでの最小値」を比較）
  min_v = [min_v, current_price].min
end

puts max_v

# n = gets.to_i
# r_array = []

# n.times do |n|
#   r_array << gets.to_i
# end

# min = r_array.min
# min_index = r_array.find_index(min)

# target_array = r_array.slice(min_index, r_array.length)
# max = target_array.max

# answer = if max > min
#   max - min
# else
#   -1
# end

# p answer