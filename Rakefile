require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:regression) do |t|
  t.profile = `regression`
end

task :default => :features