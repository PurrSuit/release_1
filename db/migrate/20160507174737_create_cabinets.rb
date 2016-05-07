class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinets do |t|
      t.string :annex
      t.string :number
      t.timestamps null: false
    end
  end
end
