require 'rails/code_statistics'

desc 'Report code statistics (KLOCs, etc) from the application or engine'
task stats: :extended_stats

desc 'Report code statistics in extended version'
task extended_stats: :environment do
  %w[
    decorators
    facades
    middleware
    uploaders
    validators
  ].each_with_index do |folder_name, index|
    name = folder_name.capitalize
    test_name = "#{name} specs"
    STATS_DIRECTORIES.insert index + 6, [name, "app/#{folder_name}"]
    STATS_DIRECTORIES.insert (index * 2) + 16, [test_name, "spec/#{folder_name}"]
    CodeStatistics::TEST_TYPES << test_name
  end
end
