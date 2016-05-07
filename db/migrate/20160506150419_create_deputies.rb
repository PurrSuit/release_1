class CreateDeputies < ActiveRecord::Migration
  def change
    create_table :deputies do |t|

      t.string :deputy_name
      t.integer :registration
      t.string :legislation_situation
<<<<<<< 8f8fbb7824306f3bee3a590615d9b850f28ba81e
      t.references :party
      t.references :uf
=======

>>>>>>> criando parser
    end
  end
end
