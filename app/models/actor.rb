class Actor < ActiveRecord::Base
 has_many :characters
 has_many :shows, through: :characters
 
 def full_name 
   name = "#{self.first_name} #{self.last_name}"
 end 
 
 def list_roles
   roles = [] 
   aoc = self.characters.map{|character|character.name}
   aos = self.shows.map{|show|show.name}
   role = aoc.concat aos 
   roles << role.join(" - ")
   roles 
 end 
  
end