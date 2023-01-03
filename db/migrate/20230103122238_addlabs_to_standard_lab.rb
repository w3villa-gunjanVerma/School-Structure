class AddlabsToStandardLab < ActiveRecord::Migration[7.0]
  def change
    add_reference :standard_labs, :labs, index: true
  end
end
