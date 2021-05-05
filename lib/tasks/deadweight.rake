if Rails.env.development?
  begin
    require 'deadweight'
  rescue LoadError
    puts "Add gem 'deadweight' to Gemfile"
  end

  desc 'run Deadweight (requires script/server)'
  task deadweight: :environment do
    deadweight = Deadweight.new
    deadweight.stylesheets = ['/assets/application.css']
    deadweight.pages = ['/']
    deadweight.run
  end
end
