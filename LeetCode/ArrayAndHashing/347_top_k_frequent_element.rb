def top_k_frequent(nums, k)
  counts = Hash.new(0)
  nums.each do |n|
    counts[n] += 1
  end

  # 2. 出現回数（value）の多い順にソートする
  # 3. 先頭から k 個取り出し、数字（key）のみの配列にする
  counts.sort_by { |number, count| -count }.first(k).map(&:first)
end
# def top_k_frequent(nums, k)
#   groups = Hash.new{ |hash, key| hash[key] = []}

#   nums.each do |number, count|
#     groups[number] << count
#   end
# end

nums = [1,1,1,2,2,3], k = 2

p top_k_frequent(nums, k)