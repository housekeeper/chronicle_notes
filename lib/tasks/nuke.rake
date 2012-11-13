namespace :db do
  
  desc "ALALALALA BOOOOOM the database"
  task :nuke do
    Rake::Task["db:drop"].invoke
    Rake::Task["db:create"].invoke
    Rake::Task["db:migrate"].invoke
    Rake::Task["db:seed"].invoke
    Rake::Task["db:test:clone"].invoke
    Rake::Task
  end

end