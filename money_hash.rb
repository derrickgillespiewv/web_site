def change_machine(amount)
  change = Hash[:quarters, 0, :dimes, 0, :nickels, 0, :pennies, 0]
  coin_values = Hash[25, :quarters, 10, :dimes, 5, :nickels, 1, :pennies]
  coin_values.each do |coin, value|
    while amount >= coin
      change[coin_values[coin]] += 1
      amount -= coin
    end
  end
 
  
change.collect { |key, value| "  #{value} #{key}  " }.join

end

