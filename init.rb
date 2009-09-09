require 'redmine'
require 'redmine_application_title/hooks/layout_hooks'

Redmine::Plugin.register :redmine_application_title do
  name 'Redmine Application Title plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'

  settings(:default => {
    'application_title' => '',
    'application_subtitle' => ''
  }, :partial => 'settings/redmine_application_title_settings')

end
