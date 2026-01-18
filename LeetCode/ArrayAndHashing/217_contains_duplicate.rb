def contains_duplicate(nums)
  if nums.uniq.count != nums.count
    true
  else
    false
  end
end

# 別解
def contains_duplicate(nums)
  sorted_nums = nums.sort
  (1..sorted_nums.length).each do |i|
    return true if sorted_nums[i] == sorted_nums[i-1]
  end

  false
end