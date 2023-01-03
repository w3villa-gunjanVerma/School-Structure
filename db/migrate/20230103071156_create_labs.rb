class CreateLabs < ActiveRecord::Migration[7.0]
  def change
    create_table :labs do |t|

      t.timestamps
    end
  end
end
