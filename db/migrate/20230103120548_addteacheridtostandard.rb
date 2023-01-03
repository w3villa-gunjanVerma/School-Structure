class Addteacheridtostandard < ActiveRecord::Migration[7.0]
  def change
    add_reference :standards, :teacher, index: true
  end
end
