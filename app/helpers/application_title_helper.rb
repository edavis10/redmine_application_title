module ApplicationTitleHelper
  def html_title(*args)

    if args.present?
      # Setter
      @html_title = super(*args)
    else
      # Getter
      title = @html_title || []

      if @project && !title.include?(@project.name)
        title.unshift(@project.name)
      end

      if Setting.plugin_redmine_application_title['application_subtitle'].present? &&
          !title.include?(Setting.plugin_redmine_application_title['application_subtitle'])
        title.unshift(Setting.plugin_redmine_application_title['application_subtitle'])
      end

      if Setting.plugin_redmine_application_title['application_title'].present? &&
          !title.include?(Setting.plugin_redmine_application_title['application_title'])
        title.unshift(Setting.plugin_redmine_application_title['application_title'])
      end

      if !title.include?(Setting.app_title)
        title << Setting.app_title
      end

      title.compact.join(' - ')

    end
    
  end

end
