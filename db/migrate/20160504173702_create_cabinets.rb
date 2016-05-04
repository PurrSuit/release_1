class CreateCabinets < ActiveRecord::Migration
  def change
    create_table :cabinet do |t|
			t.string :annex
			t.integer :id
      t.timestamps null: false
    end
  end
end
