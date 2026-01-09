def max_profit(prices)
  return 0 if prices.nil? || prices.size < 2
  # 1つ目の価格を「現在の最小値」の初期値とする
  min_v = prices[0]
  # 最大利益の初期値
  # マイナスの場合も考え、十分小さな負の数で初期化
  max_v = -1_000_000_000
  (0...prices.size).each do |i|
    current_price = prices[i]

    # 1. 最大利益を更新 (「今の価格 - これまでの最小値」と「これまでの最大利益」)
    max_v = [max_v, current_price - min_v].max
    # 2. 最小値を更新（「今の価格」と「これまでの最小値」を比較）
    min_v = [min_v, current_price].min
    max_v = 0 if max_v < 0
  end
  max_v
end

# 別解
def max_profit(prices)
  return 0 if prices.empty?

  res = 0
  min_price = prices[0]

  prices.each do |price|
    res = [res, price - min_price].max

    min_price = [min_price, price].min
  end
  res
end


# def max_profit(prices)
#   maximum = -1_000_000_000
#   minimum = prices[0]
#   tmp = []
#   (0..prices.size - 1).each do |i|
#     maximum = [maximum, maximum - minimum].max
#     minimum = [minimum, prices[i]].min
#     tmp << maximum
#   end
#   p tmp.first
# end

prices = [7,1,5,3,6,4]
p max_profit(prices)