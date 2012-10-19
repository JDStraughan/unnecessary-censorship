require 'rubygems'
require 'rake'
require 'echoe'
require 'rspec/core/rake_task'

namespace :spec do

  RSpec::Core::RakeTask.new(:normal) do |t|
    t.pattern ='spec/**/*_spec.rb'
    t.rcov = false
  end

end

desc "RSpec tests"
task "spec" => "spec:normal"

task "default" => "spec"

Echoe.new('unnecessary_censorship', '0.1.3') do |p|
  p.description     = "Unnecessarily censor a string of english words.  Extends String class for simple integration into any Ruby project."
  p.summary         = "Unnecessarily censor a string of english words."
  p.url             = "http://github.com/jdstraughan/unnecessary-censorship"
  p.author          = "JDStraughan"
  p.email           = "jdstraughan@gmail.com"
  p.ignore_pattern  = ["tmp/*", "script/*"]
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }