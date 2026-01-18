# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
#  1 * i + 2 * j = n
  return n if n <= 2
  a = 1
  b = 2
  (3 .. n).each do
    temp = a
    a = b
    b = temp + b
  end
  b
end