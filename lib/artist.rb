class Artist
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
    @@all << self
  end
  def self.all
    @@all
  end
  def songs
    self.songs.collect do |song|    #=> classes talk to each other
    song.artist
    end
  end

  def new_song(name, genre)
    @songs << self
    @songs.artist = self
  end

  def genres
    self.songs.collect do |song|
    song.genre
    end
  end
end

 