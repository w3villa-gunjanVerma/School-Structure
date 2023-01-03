class Teacher < ApplicationRecord
   has_many :standards 
   has_many :labs
   has_many :sections, through: :standard
   has_many :subjects

end
