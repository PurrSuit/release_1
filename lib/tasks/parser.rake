namespace :parse do

  task deputy: :environment do
    Deputy.parse_deputy
  end

end
