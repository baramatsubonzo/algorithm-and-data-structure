def longest_consecutive(nums)
  return 0 if nums.empty?

  sorted = nums.sort.uniq
  max_len = 1
  current_len = 1

  (0...sorted.size - 1).each do |i|
    if sorted[i+1] == sorted[i] + 1
      current_len += 1
    else
      max_len = [max_len, current_len].max
      current_len = 1
    end
  end

  [max_len, current_len].max
end


# def longest_consecutive(nums)
#   count = []
#   return 1 if nums.length == 1
#   p nums
#   sorted_nums = nums.sort.uniq
#   sorted_nums.each_with_index do |num, i|
#     p sorted_nums
#     return count if nums[i + 1].nil?
#     count << 1 if nums[i + 1] - num[i] == 1
#   end
#   count
# end

nums = [100,4,200,1,3,2]

p longest_consecutive(nums)