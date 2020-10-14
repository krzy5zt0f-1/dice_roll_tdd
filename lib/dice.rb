
class Dice

def throw(how_many_dice = 1)
  arr = []
  arr << "Throws:"
  how_many_dice.times { arr << rand(1..6) }
  b = arr[1..-1]
  sum = b.inject(0, :+)
  ending = "Your total is: #{sum}"
  arr << ending
  puts arr.join("\n")
  end

end
