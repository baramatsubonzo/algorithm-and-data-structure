def group_anagrams(strs)
  groups = Hash.new{ |hash, key| hash[key] = []}

  strs.each do |str|
    # ソートしたものをkeyとする
    sorted_key = str.split("").sort.join
    groups[sorted_key] << str
  end
  groups.values
end
# 別解
def group_anagrams(strs)
  strs.group_by { |s| s.chars.sort.join}.values
end
# def group_anagrams(strs)
#   sort_strs = strs.map { |str| str.split("").sort.join }
#   a = []
#   sort_strs.each_with_index do |sort_str, i|

#   end
# end


strs = ["act","pots","tops","cat","stop","hat"]

p group_anagrams(strs)