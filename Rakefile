#!/usr/bin/env rake
require "bundler/gem_tasks"

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'lib/quotejar'
  t.test_files = FileList['test/lib/quotejar/*_test.rb']
  t.verbose = true
end

task :default => :test