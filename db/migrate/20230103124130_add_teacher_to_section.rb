class AddTeacherToSection < ActiveRecord::Migration[7.0]
  def change
    add_reference :sections, :teacher, index: true
  end
end
