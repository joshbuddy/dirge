begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "dirge"
    s.description = s.summary = "Relative require, relative autoload and __DIR__"
    s.email = "joshbuddy@gmail.com"
    s.homepage = "http://github.com/joshbuddy/dirge"
    s.authors = ["Joshua Hull"]
    s.files = FileList["[A-Z]*", "{lib}/**/*"]
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

require 'spec'
require 'spec/rake/spectask'
task :spec => 'spec:all'
namespace(:spec) do
  Spec::Rake::SpecTask.new(:all) do |t|
    t.spec_opts ||= []
    t.spec_opts << "-rubygems"
    t.spec_opts << '-rlib/dirge'
    t.spec_opts << "--options" << "spec/spec.opts"
    t.spec_files = FileList['spec/**/*_spec.rb']
  end

end

