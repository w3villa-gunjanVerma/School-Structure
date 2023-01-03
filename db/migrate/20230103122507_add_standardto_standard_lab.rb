class AddStandardtoStandardLab < ActiveRecord::Migration[7.0]
  def change
    add_reference :standard_labs, :standard, index: true
  end
end
