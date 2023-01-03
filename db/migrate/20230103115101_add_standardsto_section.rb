class AddStandardstoSection < ActiveRecord::Migration[7.0]
  def change
    add_reference :sections, :standard, index: true
  end
end
