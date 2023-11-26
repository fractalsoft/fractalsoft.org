require_relative 'config/application'
Rails.application.load_tasks

Rake::Task[:default].prerequisites.clear if Rake::Task.task_defined?(:default)

desc 'Run all checks'
task default: %w[spec zeitwerk:check] do
  puts 'All checks passed!'
end
