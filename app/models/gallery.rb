class Gallery

  attr_reader :name, :city, :paintings, :artists

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    @paintings = []
    @artists = []
    @@all << self
  end

  def Gallery.all
    @@all
  end

  def artist_names
    artist_names = []
    artists.each do |artist|
      artist_names << artist.name
    end
    return artist_names.uniq
  end

  def most_expensive_painting
    most_expensive_painting = nil
    self.paintings.each do |painting|
      if most_expensive_painting == nil || painting.price > most_expensive_painting.price
        most_expensive_painting = painting
      end
    end
    return most_expensive_painting
  end

end
