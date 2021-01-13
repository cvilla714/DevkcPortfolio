# rubocop:disable Lint/UnderscorePrefixedVariableName
# Module for the ApplicatioHelper
module ApplicationHelper
  def login_helper(style = ' ')
    if current_user.is_a?(GuestUser)
      (link_to ' Sign In', new_user_session_path, class: style) +
        ' '.html_safe +
        (link_to 'Register', new_user_registration_path, class: style)
    else
      link_to ' Logout', destroy_user_session_path, method: :delete, class: style
    end
  end

  def source_helper(_layout_name)
    return unless session[:source]

    # content_tag(:p, "Thanks for visiting me from #{session[:source]}", class: 'source-greetings')
    greetings = "Thanks for visiting me from #{session[:source]} and you are on the #{_layout_name} layout"
    content_tag(:p, greetings, class: 'source-greetings')
    # end
  end

  def nav_helper style, tag_type
nav_links = <<NAV
<#{tag_type}><a href="#{root_path}",class="#{style}">Home</a></#{tag_type}>
<#{tag_type}><a href="#{about_me_path}",class="#{style}">About</a></#{tag_type}>
<#{tag_type}><a href="#{contact_me_to_work_path}",class="#{style}">Contact</a></#{tag_type}>
<#{tag_type}><a href="#{blogs_path}",class="#{style}">Blog</a></#{tag_type}>
<#{tag_type}><a href="#{portfolios_path}",class="#{style}">Portfolio</a></#{tag_type}>
NAV
      nav_links.html_safe
  end

end
# rubocop:enable Lint/UnderscorePrefixedVariableName
