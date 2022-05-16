class AddNameToCalcs < ActiveRecord::Migration[7.0]
  def change
    add_column :calcs, :name, :string
  end
end
