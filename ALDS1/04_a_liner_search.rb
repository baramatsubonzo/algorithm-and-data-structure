n = gets.to_i
s = gets.split.map(&:to_i)
q = gets.to_i
t = gets.split.map(&:to_i)

# Rubyのcountは、ブロックの戻り値が真になる要素の個数を数えるメソッド
ans = t.count do |val|
  s.include?(val)
end

puts ans


# s = [1,2,3,4,5]
# t = [3,4,1]

# temp = []

# s.each do |s|
#   t.each do |t|
#     if s == t
#       temp << s
#     end
#   end
# end

# p temp.size
