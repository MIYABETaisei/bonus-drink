class BonusDrink
  def self.total_count_for(amount)
    all_drink = amount
    count = amount
    while count >= 3
      get_drink = count / 3
      em_drink = count % 3
      all_drink += get_drink
      count = get_drink + em_drink
    end
    return all_drink
  end
end

p "何本買いますか？"
num = gets
p num.chomp! + "本買ったので、全部で" + BonusDrink.total_count_for(num.to_i).to_s + "本飲めます"
