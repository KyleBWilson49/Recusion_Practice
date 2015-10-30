require 'byebug'

def make_change_traditional(change, coins)
  return [] if change == 0

  coins_array = []
  number_of_coins = change / coins[0]
  if number_of_coins != 0
    number_of_coins.times { coins_array << coins[0] }
    change = change - (number_of_coins * coins[0])
    coins.shift
    coins_array += make_change(change, coins)
  else
    coins.shift
    coins_array += make_change(change, coins)
  end
  coins_array
end

def make_change_singles(change, coins)
  return [] if change == 0

  coins_array = []
  if coins[0] <= change
    coins_array << coins[0]
    change -= coins[0]
    coins_array += make_change_singles(change, coins)
  elsif coins[0] > change
    coins.shift
    coins_array += make_change_singles(change, coins)
  end
  coins_array
end

def make_change_special(change, coins)
  return [] if change == 0

  lowest_number_of_coins_array = nil

  coins.each do |coin|
    coins_array = []
    if change >= coin
      coins_array << coin
      new_change = make_change_special(change - coin, coins)
      next unless new_change
      coins_array += new_change
    else
      next
    end

    if lowest_number_of_coins_array == nil || lowest_number_of_coins_array.size > coins_array.size
      lowest_number_of_coins_array = coins_array
    end
  end

  lowest_number_of_coins_array
end
