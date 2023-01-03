class AddStudenttoSection < ActiveRecord::Migration[7.0]
  def change
    add_reference :sections, :student, index: true
  end
end
