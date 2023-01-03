class AddTeacherToLab < ActiveRecord::Migration[7.0]
  def change
    add_reference :labs, :teacher, index: true
  end
end
