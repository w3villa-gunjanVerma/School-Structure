class Student < ApplicationRecord
    has_one :section
    has_one :standard, through: :section
end
