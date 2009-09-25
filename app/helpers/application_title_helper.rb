module ApplicationTitleHelper
  def html_title(*args)
    title = super(*args)

    if args.present?
      # Setter

      if Setting.plugin_redmine_application_title['application_subtitle'].present?
        title.unshift(Setting.plugin_redmine_application_title['application_subtitle'])
      end

      if Setting.plugin_redmine_application_title['application_title'].present?
        title.unshift(Setting.plugin_redmine_application_title['application_title'])
      end
      
      @html_title = title

    else
      # Getter
      title = [title]

      if Setting.plugin_redmine_application_title['application_subtitle'].present? &&
          !title.include?(Setting.plugin_redmine_application_title['application_subtitle'])
        title.unshift(Setting.plugin_redmine_application_title['application_subtitle'])
      end

      if Setting.plugin_redmine_application_title['application_title'].present? &&
          !title.include?(Setting.plugin_redmine_application_title['application_title'])
        title.unshift(Setting.plugin_redmine_application_title['application_title'])
      end

      title.compact.join(' - ')

    end
    
  end

end
