class BonusDrink
  def self.total_count_for(amount)
    can_drink = amount
    count = amount
    while count >= 3
      get_drink = count / 3
      em_drink = count % 3
      can_drink += get_drink
      count = get_drink + em_drink
    end
    return can_drink
  end
end

p BonusDrink.total_count_for(90)