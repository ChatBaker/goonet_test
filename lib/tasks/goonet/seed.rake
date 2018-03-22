namespace :goonet do
Dir.glob(File.join(Rails.root, 'db','goonet' ,'seeds', '*.rb')).each do |file|
  desc "Load the seed data from db/goonet/seeds/#{File.basename(file)}."
  task "db:seed:#{File.basename(file).gsub(/\..+$/, '')}" => :environment do
    load(file)
  end
end
end
