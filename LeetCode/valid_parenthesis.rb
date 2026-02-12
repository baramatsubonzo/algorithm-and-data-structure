def is_valid(s)
  hash = {")" => "(", "}" => "{", "]" => "["}
  stack = []
  s.each_char do |c|
    if hash.values.include?(c)
      stack << c
    else hash.keys.include?(c)
      top = stack.pop
      # stackが空、またはペアが一致しなければfalse
      return false if top != hash[c]
    end
  end
  stack.empty?
end

def is_valid(s)
  while s.include?("()") || s.include?("{}") || s.include?("[]") do
    s = s.gsub("()", "").gsub("{}", "").gsub("[]","")
  end
  s.empty?
end

s = "([{}])"
p is_valid(s)