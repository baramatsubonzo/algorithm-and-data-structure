def check_inclusion(s1, s2)
  return false if s1.length > s2.length

  # 1. s1の文字カウント（正解のバケツ）を作る
  s1_counts = Hash.new(0)
  s1.each_char { |c| s1_counts[c] += 1 }

  # 2. 最初の「窓」の文字カウントを作る
  window_counts = Hash.new(0)
  s1.length.times { |i| window_counts[s2[i]] += 1 }

  # 3. 窓をスライドさせる
  (0..s2.length - s1.length).each do |i|
    # 今の窓の状態が正解と一致するかチェック（ソートより圧倒的に速い！）
    return true if window_counts == s1_counts

    # 窓を次に進める準備g
    left_char = s2[i]
    right_char = s2[i + s1.length]
    break if right_char.nil?

    # 左から去る文字を減らし、右から来る文字を足す
    window_counts[left_char] -= 1
    window_counts.delete(left_char) if window_counts[left_char] == 0
    window_counts[right_char] += 1
  end

  false
end


def check_inclusion(s1, s2)
  s1_len = s1.length
  s2_len = s2.length
  return false if s1_len > s2_len

  s1_ar = s1.split("")
  s2_ar = s2.split("")

  max = s2_len - s1_len
  sorted_s1 = s1_ar.sort
  (0..max).each do |i|
    return true if s2_ar[i..i+s1_len-1].sort == sorted_s1
  end
  false
end

s1 = "abc"
s2 = "lecabee"
p check_inclusion(s1, s2)

