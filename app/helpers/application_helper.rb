# frozen_string_literal: true

# Module for the ApplicatioHelper
module ApplicationHelper
  def sample_helper
    out = ''
    out << "<p>
    My helper </p>"
    # .html_safe
    out.html_safe
  end
end
