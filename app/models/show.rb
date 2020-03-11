class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters 
  belongs_to :network
end 

def actors_list

  self.actors
end 
