require File.dirname(__FILE__) + '/../../test_helper'

class ApplicationTitleHelperTest < HelperTestCase
  include ApplicationHelper
  include ApplicationTitleHelper
  include ActionView::Helpers::TextHelper
  include ActionView::Helpers::DateHelper
  
  def setup
    super
    Setting.app_title = "Redmine"
    Setting.plugin_redmine_application_title = {'application_title' => nil, 'application_subtitle' => nil}
  end

  def test_html_title_getter_with_no_settings
    response = html_title
    assert_equal 'Redmine', response
  end

  def test_html_title_getter_with_application_title
    Setting.plugin_redmine_application_title['application_title'] = 'App title'

    response = html_title

    assert_equal 'App title - Redmine', response
  end

  def test_html_title_getter_with_application_subtitle
    Setting.plugin_redmine_application_title['application_subtitle'] = 'Best application ever'

    response = html_title

    assert_equal 'Best application ever - Redmine', response
  end

  def test_html_title_with_application_title_and_subtitle
    Setting.plugin_redmine_application_title['application_title'] = 'App title'
    Setting.plugin_redmine_application_title['application_subtitle'] = 'Best application ever'

    response = html_title

    assert_equal 'App title - Best application ever - Redmine', response
  end
end
