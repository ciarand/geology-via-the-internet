desc "Deploy the site"
task :deploy do
    system "bundle exec middleman deploy"
end

desc "Build the site"
task :build do
    system "bundle exec middleman build"
end

desc "Run the development server"
task :default, :serve do
    system "bundle exec middleman server"
end
