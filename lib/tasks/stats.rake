require 'rails/code_statistics'

task stats: :extended_stats

task extended_stats: :environment do
  [
    ['Decorators', 'app/decorators'],
    ['Facades', 'app/facades'],
    ['Middleware', 'app/middleware'],
    ['Uploaders', 'app/uploaders'],
    ['Validators', 'app/validators']
  ].each_with_index do |stats_directory, index|
    STATS_DIRECTORIES.insert index + 6, stats_directory
  end
end
