class Standard < ApplicationRecord
    has_many :subject_standards
    has_many :subjects ,through: :subject_standards
    has_many :sections 
    has_many :students, through: :section
    has_many :teachers
    has_many :labs
    belongs_to :teacher
    
    # belongs_to :student
end
