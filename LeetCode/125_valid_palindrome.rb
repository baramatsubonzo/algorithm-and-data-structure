def is_palindrome(s)
  # gsub: 文字列で第一引数を第二引数で置き換える
  original = s.downcase.gsub(/[^a-z0-9]/, "")
  original == original.reverse
end

# def is_palindrome(s)
#   # gsub: 文字列で第一引数を第二引数で置き換える
#   original = s.downcase.gsub(" ", "")
#   original = original.gsub(",", "")
#   original = original.gsub(":", "")
#   original = original.gsub("?", "")
#   original = original.gsub(".", "")
#   original = original.gsub("@", "")
#   original == original.reverse
# end

s = "Was it a car or a cat I saw?"
p is_palindrome(s)