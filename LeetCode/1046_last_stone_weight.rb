# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  return 0 if stones.empty?
  return stones[0] if stones.size == 1
  sorted_stones = stones.sort

  compares = sorted_stones.pop(2)
  if compares[-1] - compares[0] == 0
    return last_stone_weight(sorted_stones)
  else
    new_stone = compares[-1] - compares[0]
    sorted_stones.push(new_stone)
    return last_stone_weight(sorted_stones)
  end
end


stones = [2,7,4,1,8,1]
# p last_stone_weight(stones)

def last_stone_weight(stones)
  while stones.size > 1
    stones.sort!

    diff = stones.pop - stones.pop
    stones << diff if diff != 0
  end

  stones.empty? ? 0 : stones[0]
end
