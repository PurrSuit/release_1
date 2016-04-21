class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :password_digest
      t.integer :experience_points
      t.boolean :role_admin

    end
  end
end
