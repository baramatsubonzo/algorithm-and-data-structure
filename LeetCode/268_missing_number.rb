def missing_number(nums)
  # nums.sort!
  n = nums.length
  # return 0 unless nums.include?(0) != 0
  a = (0 .. n).to_a - nums
  a.first
end

# 別解
def missing_number(nums)
  nums.sort!

  nums.each_with_index do |num, i|
    return i if num != i
  end

  nums.length
end

nums = [3,1,2]

p missing_number(nums)
