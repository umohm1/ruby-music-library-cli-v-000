require 'pry'

class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create(name)
    artist = Artist.new(name)
    self.all << artist
    artist
  end

  def add_song(song)
   @songs << song
   song.artist = self
   @songs << song unless @songs.include?(song)
  end

end
