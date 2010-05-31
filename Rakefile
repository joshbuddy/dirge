begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "dirge"
    s.description = s.summary = "Relative require, relative autoload and __DIR__"
    s.email = "joshbuddy@gmail.com"
    s.homepage = "http://github.com/joshbuddy/dirge"
    s.authors = ["Joshua Hull"]
    s.files = FileList["[A-Z]*"]
    s.add_dependency 'callsite', '>=0.0.2'
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
