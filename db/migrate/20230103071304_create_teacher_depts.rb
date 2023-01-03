class CreateTeacherDepts < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_depts do |t|

      t.timestamps
    end
  end
end
