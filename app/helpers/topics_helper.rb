module TopicsHelper
  def topic_list
    Topic.all.order(:title)
  end
end
