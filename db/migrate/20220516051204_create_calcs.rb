class CreateCalcs < ActiveRecord::Migration[7.0]
  def change
    create_table :calcs do |t|
      t.decimal :weight
      t.decimal :height
      t.decimal :bmi

      t.timestamps
    end
  end
end
