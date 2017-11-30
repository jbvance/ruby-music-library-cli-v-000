class Song
  attr_accessor :name, :artist

  @@all = []

  def initialize(name, artist=nil)
    @name = name
    @artist = artist if artist
  end

  # def artist=(artist)
  #   artist.add_song(self)
  # end

  def save
      @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def self.create(name)
    song = self.new(name)
    song.save
    song
  end

end
