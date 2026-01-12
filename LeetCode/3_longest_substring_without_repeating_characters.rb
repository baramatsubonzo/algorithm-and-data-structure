def length_of_longest_substring(s)
  max_len = 0
  start_idx = 0
  used_chars = {} # 文字 => その文字が最後に現れたインデックス

  s.chars.each_with_index do |char, i|
    # すでに使われている文字で、かつ現在の探索範囲内にある場合
    if used_chars.key?(char) && used_chars[char] >= start_idx
      # 開始位置を「重複した文字の次の位置」にジャンプさせる
      start_idx = used_chars[char] + 1
    end

    used_chars[char] = i
    # 現在の長さを計算して最大値を更新
    current_len = i - start_idx + 1
    max_len = [max_len, current_len].max
  end

  max_len
end


# def length_of_longest_substring(s)
#   strings = s.split("")
#   count = 0
#   strings.each.with_index do |string, i|
#     count += 1 if strings[i] != string[i-1]
#   end
# end

# def length_of_longest_substring(s)
#   s.split("").uniq.length
# end

s = "pwwkew"

p length_of_longest_substring(s)