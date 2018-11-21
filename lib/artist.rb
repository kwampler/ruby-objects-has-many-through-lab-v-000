class Artist
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
    @all = all
  end
  def songs
    self.songs.collect do |song|    #=> classes talk to each other
    song.artist
    end
  end

  def new_song(name)
    @songs << song
    song.artist = self
  end

  def genres
    self.songs.collect do |song|
    song.genre
    end
  end
end

 