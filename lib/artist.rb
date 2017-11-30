class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
      @@all << self
  end

  def add_song(song)
    @@all << song
  end

  def self.all
    @@all
  end

  def self.destroy_all
    self.all.clear
  end

  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end

end
