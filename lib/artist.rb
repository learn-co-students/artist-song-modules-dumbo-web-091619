require 'pry'
require_relative './common_methods.rb'
require_relative './song.rb'

class Artist < ForAll
  extend CommonMethods::ClassMethods
  include CommonMethods::InstanceMethods

  attr_accessor :name
  attr_reader :songs

  def initialize
    super
    @songs = []
  end

  def self.find_by_name(name)
    @@classall.detect{|a| a.name == name}
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end

end
