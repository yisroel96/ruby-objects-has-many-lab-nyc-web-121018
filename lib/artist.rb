require 'pry'
class Artist

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
  end

  def self.song_count
    # binding.pry
    Song.all.count
  end
end #end of class
