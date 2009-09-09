module RedmineApplicationTitle
  module Hooks
    class LayoutHooks < Redmine::Hook::ViewListener
      def view_layouts_base_html_head(context={})
        return stylesheet_link_tag('redmine_application_title', :plugin => 'redmine_application_title')
      end

      def view_layouts_base_body_bottom(context={})
        title = if Setting.plugin_redmine_application_title['application_title'].blank?
                  Setting.app_title
                else
                  Setting.plugin_redmine_application_title['application_title']
                end
        subtitle = Setting.plugin_redmine_application_title['application_subtitle'] || ''

        app_title = content_tag(:h1, h(title))
        subtitle = content_tag(:h2, h(subtitle))
        
        return content_tag(:div,
                           app_title + subtitle,
                           :id => 'redmine_application_title')
        
      end

    end
  end
end
