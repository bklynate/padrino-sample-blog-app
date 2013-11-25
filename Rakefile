require 'bundler/setup'
require 'padrino-core/cli/rake'

PadrinoTasks.use(:database)
PadrinoTasks.use(:activerecord)
PadrinoTasks.init

namespace :db do
  namespace :schema do
    task :load do
      Rake::Task['ar:schema:load'].invoke
    end
  end
end
