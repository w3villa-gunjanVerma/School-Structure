class Section < ApplicationRecord
    belongs_to :student
    belongs_to :standard
    has_many :teachers, through: :standard
end
