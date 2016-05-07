class CreateDeputies < ActiveRecord::Migration
  def change
    create_table :deputies do |t|

      t.integer :registration
      t.string :legislation_situation
      t.references :party
      t.references :uf
    end
  end
end
