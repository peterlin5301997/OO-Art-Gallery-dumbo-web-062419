class Artist

  attr_reader :name, :years_experience, :paintings, :galleries, :cities

  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @paintings = []
    @galleries = []
    @cities = []
    @@all << self
  end

  def Artist.all
    @@all
  end

  def create_painting(title, price, gallery)
    painting = Painting.new(title, price)
    @paintings << painting
    @galleries << gallery
    @cities << gallery.city
    gallery.paintings << painting
    gallery.artists << self
  end

  def Artist.total_experience
    total = 0
    Artist.all.each do |artist|
      total += artist.years_experience
    end
    return total
  end

  def Artist.most_prolific
    most_prolific = nil
    # prolificness = (num of paintings / years of experience)
    Artist.all.each do |artist|
      if most_prolific == nil || (artist.paintings.length / artist.years_experience) > (most_prolific.paintings.length / most_prolific.years_experience)
        most_prolific = artist
      end
    end
    return most_prolific
  end

end
