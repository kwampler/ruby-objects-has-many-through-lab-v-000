class Artist
  attr_accessor :name, :all
  
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
  end
  def all
    @all
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

  def genres                        #=> This is how the other two
    self.songs.collect do |song|    #=> classes talk to each other
      song.genre
    end
  end
end

 