class Artist
  attr_accessor :name, :song
  
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
    @song = song
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
    Song.new  
    #song.artist = self
  end

   def genres
     self.songs.collect do |song|    #=> classes talk to each other
      song.genre
    end
  end
end

 