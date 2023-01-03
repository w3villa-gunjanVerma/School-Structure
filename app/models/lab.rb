class Lab < ApplicationRecord
    has_many :standards
    belongs_to :teacher
end
