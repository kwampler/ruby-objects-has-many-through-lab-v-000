class Artist
  attr_accessor :name
  
  @@all = []

  def initialize(name)
    @songs = []
    @name = name
  end
  def all
    @all
  end
  

 