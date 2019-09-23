require 'pry'
require_relative './common_methods.rb'


class ForAll
  @@classall = []
  def self.all
    @@classall
  end
end


class Song < ForAll

  extend CommonMethods::ClassMethods
  include CommonMethods::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  def self.find_by_name(name)
    @@classall.detect{|a| a.name == name}
  end

  def artist=(artist)
    @artist = artist
  end

end

