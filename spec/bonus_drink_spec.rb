require File.expand_path(File.dirname(__FILE__) + '/../bonus_drink')

describe BonusDrink do
  specify { expect(BonusDrink.total_count_for(0)).to eq 0 }
  it '0個購入したとき0本飲める' do
    expect(BonusDrink.total_count_for(0)).to eq 0
  end
  it '1個購入したとき1本飲める' do
    expect(BonusDrink.total_count_for(1)).to eq 1
  end
  it '3個購入したとき4本飲める' do
    expect(BonusDrink.total_count_for(3)).to eq 4
  end
  it '11個購入したとき16本飲める' do
    expect(BonusDrink.total_count_for(11)).to eq 16
  end
  it '100個購入したとき149本飲める' do
    expect(BonusDrink.total_count_for(100)).to eq 149
  end
end