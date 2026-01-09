n = gets.to_i
a = gets.split.map(&:to_i)

def insertion_sort(a, n)
  #1枚目のカード(index 0)は最初から整列済みとみなす。
  (1..n-1).each do |i|
    #現在注目のカード
    #A[i]の値を一時的に保持する変数
    v = a[i]
    #その一つ左のカードから比較開始
    #ソート済み部分列からvを挿入するための位置を探すループ
    j = i - 1

    while j >=0 && a[j] > v
      a[j + 1] = a[j]
      j-= 1
    end
    a[j+1] = v

    puts a.join(' ')
  end
end

puts a.join(' ')

insertion_sort(a, n)
