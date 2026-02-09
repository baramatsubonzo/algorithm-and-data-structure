def is_anagram(s, t)
  s.split("").sort == t.split("").sort ? true : false
end

def is_anagram(s, t)
  return false unless s.length == t.length

  count = Hash.new(0)

  s.each_char { |c| count[c] += 1 }
  t.each_char { |c| count[c] -= 1 }

  count.values.all?(&:zero?)
end

s = "racecar"
t = "carrace"
p is_anagram(s, t)