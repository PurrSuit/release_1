class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
			t.string :name
			t.string :initials
			t.references :uf
      t.timestamps null: false
    end
  end
end
