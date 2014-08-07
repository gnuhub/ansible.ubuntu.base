require 'cucumber/rake/task'

Cucumber::Rake::Task.new do |t|
end

desc "Run tests"
task :test => [:cucumber]

desc "generate report"
task :doc do 
	`ARUBA_REPORT_DIR=doc cucumber features`
end

task :default => :test