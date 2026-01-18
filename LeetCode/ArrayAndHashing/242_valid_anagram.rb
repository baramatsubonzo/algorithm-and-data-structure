def is_anagram(s, t)
  false if s.length != t.length
  s.split("").sort == t.split("").sort
end