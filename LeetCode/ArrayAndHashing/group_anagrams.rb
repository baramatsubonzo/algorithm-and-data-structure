def group_anagrams(strs)
  group = strs.group_by {|str| str.chars.sort.join}
  group.values
end

strs = ["act","pots","tops","cat","stop","hat"]
p group_anagrams(strs)