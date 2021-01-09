# frozen_string_literal: true

module TopicsHelper
  def topic_list
    Topic.all.order(:title)
  end
end
