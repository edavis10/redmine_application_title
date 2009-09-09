module RedmineApplicationTitle
  module Hooks
    class LayoutHooks < Redmine::Hook::ViewListener
      def view_layouts_base_html_head(context={})
        return stylesheet_link_tag('redmine_application_title', :plugin => 'redmine_application_title')
      end

      def view_layouts_base_body_bottom(context={})
        return "<div id='redmine_application_title'><h1>This is a Title</h1><h2>Subtitle</h2></div>"
      end

    end
  end
end
