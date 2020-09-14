require "pry"
class Owner
  # code goes here
  attr_reader :name, :species
  attr_accessor 
  
  @@all = []
  @@count = 0
  
  def initialize(name, species = "human")
    @name = name
    @species = species
    @@all << self 
    @@count += 1
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count 
    @@count
  end
  
  def self.reset_all
    @@count = 0
  end
  
  def cats 
    binding.pry
  end
  
  
  
end