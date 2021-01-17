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

  def nav_items
    [
      {
        url: root_path,
        title: 'Home'
      },
      {
        url: about_me_path,
        title: 'About'
      },
      {
        url: contact_me_to_work_path,
        title: 'Contact'
      },
      {
        url: blogs_path,
        title: 'Blog'

      },
      {
        url: portfolios_path,
        title: 'Portfolio'
      }
    ]
  end

  def nav_helper(style, tag_type)
    nav_links = ''
    nav_items.each do |item|
      nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style} #{active? item[:url]}'>#{item[:title]}</a></#{tag_type}>"
    end
    nav_links.html_safe
  end

  def active?(path)
    'active' if current_page? path
  end

  def markdown(_text)
    options = %i[hard_wrap fenced_code_blocks no_intra_emphasis autolink strikethrough superscript underline highlight quote]
    Markdown.new(_text, *options).to_html.html_safe
  end
end
# rubocop:enable Lint/UnderscorePrefixedVariableName
