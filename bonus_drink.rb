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

