class Painting

  attr_reader :title, :price

  @@all = []

  def initialize(title, price)
    @title = title
    @price = price
    @@all << self
  end

  def Painting.all
    @@all
  end

  def Painting.total_price
    total_price = 0
    Painting.all.each do |painting|
      total_price += painting.price
    end
    return total_price
  end

end
