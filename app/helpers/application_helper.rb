# frozen_string_literal: false

# Module for the ApplicatioHelper
module ApplicationHelper
  def sample_helper
    out = ''
    out << "<p>
    My helper </p>"
    # .html_safe
    out.html_safe
  end

  def login_helper
    if current_user.is_a?(User)
      link_to 'Logout', destroy_user_session_path, method: :delete
    else
      (link_to 'Sign In', new_user_session_path) +
        '<br/>'.html_safe +
        (link_to 'Register', new_user_registration_path)
      end
  end

  def source_helper(_layout_name)
    if session[:source]
      # content_tag(:p, "Thanks for visiting me from #{session[:source]}", class: 'source-greetings')
      greetings = "Thanks for visiting me from #{session[:source]} and you are on the #{_layout_name} layout"
      content_tag(:p, greetings, class: 'source-greetings')
    end
  end
end
