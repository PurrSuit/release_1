class RemoveCpfFromPeople < ActiveRecord::Migration
  def change
    remove_column :people, :cpf, :string
  end
end
