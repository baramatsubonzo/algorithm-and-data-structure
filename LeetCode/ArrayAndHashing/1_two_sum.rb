def two_sum(nums, target)
  nums.each_with_index do |num, i|
    rest = target - num
    rest_index = nums.find_index(rest)

    if rest_index && rest_index != i
      return [i, rest_index]
    end
  end
  nil
end

# 別解
def two_sum(nums, target)
  (0...nums.size).each do |i|
    ((i+1)...nums.size).each do |j|
      if nums[i] + nums[j] == target
        return [i, j]
      end
    end
  end
  []
end


# def two_sum(nums, target)
#   (0..nums.size-1).each do |i|
#     rest = target - nums[i]
#     if nums.include?(rest)
#       return [i, nums.find_index(rest)]
#     else

#     end
#   end
# end

# nums = [2, 7, 11, 15]
# target = 9
# p two_sum(nums, target)