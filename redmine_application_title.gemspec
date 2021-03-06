# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{redmine_application_title}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Eric Davis"]
  s.date = %q{2009-10-14}
  s.description = %q{This is a simple Redmine plugin to add your Application Title and Subtitle to the top right of every page in Redmine.  The built in Application Title only displays on specific pages and in the HTML title of the page.}
  s.email = %q{edavis@littlestreamsoftware.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "COPYRIGHT.txt",
     "CREDITS.txt",
     "GPL.txt",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "app/helpers/application_title_helper.rb",
     "app/views/settings/_redmine_application_title_settings.html.erb",
     "assets/stylesheets/redmine_application_title.css",
     "config/locales/en.yml",
     "init.rb",
     "lang/en.yml",
     "lib/redmine_application_title/hooks/layout_hooks.rb",
     "lib/redmine_application_title/patches/application_controller_patch.rb",
     "rails/init.rb",
     "test/test_helper.rb",
     "test/unit/helpers/application_title_helper_test.rb"
  ]
  s.homepage = %q{https://projects.littlestreamsoftware.com/projects/TODO}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{redmine_application_title}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{This is a simple Redmine plugin to add your Application Title and Subtitle to the top right of every page in Redmine.  The built in Application Title only displays on specific pages and in the HTML title of the page.}
  s.test_files = [
    "test/unit/helpers/application_title_helper_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
