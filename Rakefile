require 'rake/testtask'

# Runs the Babble program
task :babble do |t|
	ruby "babble.rb"
end

# runs all tests in the ./tests directory with files that begin with the prefix "when_"
Rake::TestTask.new do |t|
	t.pattern = "tests/*/test_*.rb"
end
