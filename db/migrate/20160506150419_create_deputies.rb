class CreateDeputies < ActiveRecord::Migration
  def change
    create_table :deputies do |t|

      t.integer :registration
      t.string :legislation_situation
          
    end
  end
end
