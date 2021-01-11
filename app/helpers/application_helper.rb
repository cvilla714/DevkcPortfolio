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
end
# rubocop:enable Lint/UnderscorePrefixedVariableName
