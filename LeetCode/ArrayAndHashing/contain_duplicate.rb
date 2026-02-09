def has_duplicate(nums)
  nums.uniq.size != nums.size ? true : false
end

def has_duplicate(nums)
  seen = {}
  nums.each do |num|
    p seen
    return true if seen[num]
    # まだ見ていない num だった場合、seen に記録する。
    seen[num] = true
  end
  false
end


nums = [1,2,3,3]
p has_duplicate(nums)
