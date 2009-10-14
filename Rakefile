#!/usr/bin/env ruby
require 'redmine_plugin_support'

Dir[File.expand_path(File.dirname(__FILE__)) + "/lib/tasks/**/*.rake"].sort.each { |ext| load ext }

RedminePluginSupport::Base.setup do |plugin|
  plugin.project_name = 'redmine_application_title'
  plugin.default_task = [:test]
  plugin.tasks = [:doc, :release, :clean, :test]
  # TODO: gem not getting this automaticly
  plugin.redmine_root = File.expand_path(File.dirname(__FILE__) + '/../../../')
end
begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "redmine_application_title"
    s.summary = "This is a simple Redmine plugin to add your Application Title and Subtitle to the top right of every page in Redmine.  The built in Application Title only displays on specific pages and in the HTML title of the page."
    s.email = "edavis@littlestreamsoftware.com"
    s.homepage = "https://projects.littlestreamsoftware.com/projects/TODO"
    s.description = "This is a simple Redmine plugin to add your Application Title and Subtitle to the top right of every page in Redmine.  The built in Application Title only displays on specific pages and in the HTML title of the page."
    s.authors = ["Eric Davis"]
    s.rubyforge_project = "redmine_application_title" # TODO
    s.files =  FileList[
                        "[A-Z]*",
                        "init.rb",
                        "rails/init.rb",
                        "{bin,generators,lib,test,app,assets,config,lang}/**/*",
                        'lib/jeweler/templates/.gitignore'
                       ]
  end
  Jeweler::GemcutterTasks.new
  Jeweler::RubyforgeTasks.new do |rubyforge|
    rubyforge.doc_task = "rdoc"
  end
rescue LoadError
  puts "Jeweler, or one of its dependencies, is not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

