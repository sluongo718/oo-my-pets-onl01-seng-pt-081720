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
    #returns a collection of all the cats that belong to the owner
     Cat.all.select {|the_cat| the_cat.owner == self}
  end
  
  def dogs 
     Dog.all.select {|the_dog| the_dog.owner == self}
  end
  
  def buy_cat(buying_cat)
    binding.pry
  end
  
  
  
end