def eval_rpn(tokens)
  stack = []

  tokens.each do |token|
    case token
    when "+", "-", "*", "/"
      # スタックから最後にいれた2つを取り出す。配列から消す
      # 先に pop した方が「後ろの数 (b)」、次が「前の数 (a)」
      b = stack.pop
      a = stack.pop

      case token
      when "+" then stack << a + b
      when "-" then stack << a - b
      when "*" then stack << a * b
      # Rubyでは
      # -7 / 2   # => -4 とマイナス無限に切り捨て。
      # to_f / to_i　で要件を満たすようにする
      # Assume that division between integers always truncates toward zero.
      when "/" then stack << (a.to_f / b).to_i
      end
    else
      # 演算子以外（数字）なら整数に変換してスタックへ
      stack << token.to_i
    end
  end

  # 最後にスタックに残った1つが計算結
  stack.pop
end



def eval_rpn(tokens)
  stack = []

  tokens.each do |token|
    stack << token if token.to_i.integer?
    if token == "+"
      ans = stack[0] + stack[1]
      stack << ans
    end
    if token == "-"
      ans = stack[0] - stack[1]
      stack << ans
    end
    if token == "*"
      ans = stack[0] * stack[1]
      stack << ans
    end
    if token == "/"
      ans = stack[0] / stack[1]
      stack << ans
    end
  end
  stack.first
end