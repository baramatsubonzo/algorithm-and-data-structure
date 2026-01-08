def solve
  n = gets.to_i
  # フィボナッチの結果を格納する配列（メモ）
  # F[0]=1, F[1]=1 と決まっている
  f = Array.new(n + 1)
  f[0] = 1
  f[1] = 1

  # 2項目以降を順番に計算して埋めていく
  # F[i] は直前とその前の和
  (2..n).each do |i|
    f[i] = f[i - 1] + f[i - 2]
  end

  puts f[n]
end

solve