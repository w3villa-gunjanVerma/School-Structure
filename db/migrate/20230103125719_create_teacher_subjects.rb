class CreateTeacherSubjects < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_subjects do |t|
      t.references :teacher, null: false, index: true
      t.references :subject, null: false, index: true

      t.timestamps
    end
  end
end
