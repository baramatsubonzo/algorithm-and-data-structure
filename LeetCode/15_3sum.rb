def three_sum(nums)
  nums.sort!
  res = []

  len = nums.length

  (0..len-3).each do |i|
    next if i > 0 && nums[i] == nums[i-1]
    (i + 1.. len -2).each do |j|
      next if j > i + 1 && nums[j] == nums[j - 1]
      (j + 1 .. len-1).each do |k|
        next if k > j + 1 && nums[k] == nums[k-1]

        if nums[i] + nums[j] + nums[k] == 0
          res << [nums[i], nums[j], nums[k]]
        end
      end
    end
  end
  res
end