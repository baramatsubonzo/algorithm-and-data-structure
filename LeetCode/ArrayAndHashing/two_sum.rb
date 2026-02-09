def two_sum(nums, target)
  (0..nums.length-2).each do |i|
    # rubyの二重ループは、i+1から始まるで
    (i+1..nums.length-1).each do |j|
      return i, j if nums[i] + nums[j] == target
    end
  end
end


nums = [3,4,5,6]
target = 7
nums = [4,5,6]
target = 10

p two_sum(nums, target)