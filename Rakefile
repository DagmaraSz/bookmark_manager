require 'data_mapper'
require './app/app.rb'

namespace :database do
  desc "Non destructive upgrade"
  task :database_upgrade do
    DataMapper.auto_upgrade!
    puts 'Auto-upgrade complete. Non data loss'
  end

  desc 'Destructive upgrade'
  task :database_migrate do
    DataMapper.auto_migrate!
    puts 'Auto-upgrade complete (data was lost)'
  end  
end
