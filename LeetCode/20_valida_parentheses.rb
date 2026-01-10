# stack
def is_valid(s)
  # 閉じ括弧がきたときにどの開き括弧を期待するか
  pairs = {")" => "(", "]" => "[", "}" => "{"}
  stack = []
  array = s.split("")

  array.each do |char|
    # 開き括弧はスタックに
    if ["(", "[", "{"].include?(char)
      stack.push(char)
    # 閉じ括弧ならスタックから開き括弧を取り出す
    elsif pairs.key?(char)
      last_open = stack.pop
      # ペアが違う、または開き括弧がないなら修了
      if last_open != pairs[char]
        return false
      end
    end
  end
  stack.empty?
end

# 別解
def is_valid(s)
  # 必ず "()", "[]", "{}"のどれかのペアができるのを前提とする
  while s.include?("()") || s.include?("[]") || s.include?("{}")
    s = s.gsub("()", "").gsub("[]", "").gsub("{}", "")
  end
  # 最終的に空になれば true
  s.empty?
end

# def is_valid(s)
#   # 文字列を1文字ごとの配列にする
#   array = s.split("")
#   # 初期値をtrueとする
#   result = true
#   if array.include?("(")
#     result = array.include?(")") && array.count("(") == array.count(")") ? true : false
#   end
#   if array.include?("[")
#     result = array.include?("]") && array.count("[") == array.count("]") ? true : false
#   end
#   if array.include?("{")
#     result = array.include?("}") && array.count("{") == array.count("}") ? true : false
#   end
#   result
# end

s = "([)]"
p is_valid(s)