require 'redmine'
require 'redmine_application_title/hooks/layout_hooks'

# Patches to the Redmine core.
require 'dispatcher'

Dispatcher.to_prepare do
  require_dependency 'application'
  require 'redmine_application_title/patches/application_controller_patch'
  ApplicationController.send(:include, RedmineApplicationTitle::Patches::ApplicationControllerPatch)
end


Redmine::Plugin.register :redmine_application_title do
  name 'Application Title'
  author 'Eric Davis'
  url 'https://projects.littlestreamsoftware.com/projects/redmine-misc'
  author_url 'http://www.littlestreamsoftware.com'
  description 'This is a simple Redmine plugin to add your Application Title and Subtitle to the top right of every page in Redmine.  The built in Application Title only displays on specific pages and in the HTML title of the page.'
  version '0.1.0'

  requires_redmine :version_or_higher => '0.8.0'

  settings(:default => {
    'application_title' => '',
    'application_subtitle' => ''
  }, :partial => 'settings/redmine_application_title_settings')

end
