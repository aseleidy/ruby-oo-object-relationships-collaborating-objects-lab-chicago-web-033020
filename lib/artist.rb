require_relative 'song.rb'
require 'pry'

class Artist 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    self.class.all << self
  end 
  
  def self.all 
    @@all 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end 
  end 
  
  def self.find_or_create_by_name(name) 
    name_exist = self.all.find{|artist| artist.name == name}
    if name_exist
      name_exist 
    else 
      self.new(name)
    end 
  end 
  
  def print_songs 
    songs.each do |song| 
      print "#{song.name}\n" 
    end
  end 
end 