class MinStack
    def initialize()
      @stack = []
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      @stack << val
    end


=begin
    :rtype: Void
=end
    def pop()
      val = @stack.last
      @stack.delete_at(-1)
    end


=begin
    :rtype: Integer
=end
    def top()
      @stack.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
      @stack.sort.first
    end

end

class MinStack
    def initialize()
      @stack = []
      # 現在の最小値を常に保持する補助スタック
      @min_stack = []
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      @stack << val
      # min_stackが空、または新しい値が現在の最小値以下の場合、min_stackにも追加
      if @min_stack.empty? || val <= @min_stack.last
        @min_stack << val
      end
    end


=begin
    :rtype: Void
=end
    def pop()
      val = @stack.pop
      # popした値が現在の最小値と等しい場合、min_stackからもpop
      if val == @min_stack.last
        @min_stack.pop
      end
    end


=begin
    :rtype: Integer
=end
    def top()
      @stack.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
      @min_stack.last
    end

end