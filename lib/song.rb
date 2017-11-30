class Song
  attr_accessor :name, :genre

  @@all = []

  def initialize(name, artist_param=nil, genre_param=nil)
    @name = name
    self.artist = artist_param if artist_param
    self.genre = genre_param if genre_param
  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self)
  end

  def artist
    @artist
  end

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
