class Subject < ApplicationRecord
    has_many :subject_standards
    has_many :standards ,through: :subject_standards
    has_many :teachers
end
