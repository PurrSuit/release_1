class DeputySerializer < ActiveModel::Serializer
  attributes :id, :name, :deputy_name, :email, :gender :age, :registration, :legislation_situation, :image_path
end
