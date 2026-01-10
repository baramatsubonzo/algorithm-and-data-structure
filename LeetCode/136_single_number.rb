# sorted
def single_number(nums)
  nums.sort!
  # 最後から2番目までを対象
  (0..nums.length - 2).step(2) do |i|
    return nums[i] if nums[i] != nums[i + 1]
  end
  nums.last
end

def single_number(nums)
  nums.sort!
  i = 0

  while i < nums.length - 1
    return nums[i] if nums[i] != nums[i + 1]
    i += 2
  end
  nums[i]

end
# def single_number(nums)
#   nums.sort!
#   a = nums.map {|num| num.odd?}
#   b = nums.map {|num| num.even?}
#   end
# end

# def single_number(nums)
#   answer = []
#   nums.each do |i|
#     answer << i if nums.count(i) == 1
#   end
#   answer.first
# end

nums = [2,2,1]

p single_number(nums)