class Song
  attr_accessor :band, :title

  @@all = []
  
  def initialize(title, band)
    self.title = title
    self.band = band
  end

  def self.create(title, band)
    Song.new(title, band).tap {|song| song.save}
  end
  
  def save
    @@all << self
  end