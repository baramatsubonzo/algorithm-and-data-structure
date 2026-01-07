n = gets.to_i
s = gets.split.map(&:to_i)
q = gets.to_i
t = gets.split.map(&:to_i)

def binary_search(array, key)
  left = 0
  # 配列最後のインデックスを取得
  right = array.size - 1

  while left <= right
    # 中央値 2 で割った 商 を取得
    mid = (left + right) / 2
    if array[mid] == key
      return true
    elsif array[mid] < key
      left = mid + 1
    else
      right = mid - 1
    end
  end

  return false
end

count = 0
t.each do |key|
  if binary_search(s, key)
    count += 1
  end
end

puts count
