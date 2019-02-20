class Person < ApplicationRecord
  
  validates :age, numericality: true
  validates :name, :age, :gender, presence: true
  
  def basic_info
    "#{self.name}, #{self.age}, #{self.gender}"
   end
end
