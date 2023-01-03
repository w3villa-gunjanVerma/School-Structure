class CreateStudentStandards < ActiveRecord::Migration[7.0]
  def change
    create_table :student_standards do |t|

      t.timestamps
    end
  end
end
