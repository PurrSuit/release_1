class AddDeputyNameToDeputy < ActiveRecord::Migration
  def change
    add_column :deputies, :deputy_name, :string
  end
end
