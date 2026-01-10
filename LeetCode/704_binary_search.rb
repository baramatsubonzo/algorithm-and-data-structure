def search(nums, target)
#  nums.find_index(target) ? nums.find_index(target) : -1
  nums.find_index(target) || -1
end

# 別解
def search(nums, target)
  left = 0
  right = nums.length - 1
  while left <= right
    # mid は left からのオフセット
    mid = left + (right - left) / 2
    if nums[mid] == target
      return mid
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  -1
end


# 別解: 再帰での書き方
def search(nums, target)
  binary_search(nums, target, 0, nums.length - 1)
end

def binary_search(nums, target, left, right)
  return -1 if left > right

  mid = left + (right - left) / 2

  if nums[mid] == target
    return mid
  elsif nums[mid] < target
    return binary_search(nums, target, mid + 1, right)
  else
    return binary_search(nums, target, left, mid - 1)
  end
end

nums = [-1,0,3,5,9,12]
target = 9

p search(nums, target)
