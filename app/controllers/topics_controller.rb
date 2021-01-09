# frozen_string_literal: true

class TopicsController < ApplicationController
  before_action :set_blog, only: %i[show edit update destroy]

  def index
    @topics = Topic.all
  end

  def show
    @blogs = Topic.find(params[:id]).blogs
    if @blogs.blank?
      redirect_to root_path, notice: 'There are no blogs on this topic yet'
    else
      @most_recent_blog = @blogs.most_recent
    end
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to @topic
    else
      render :new
    end
  end

  def edit; end

  def update
    if @topic.update(topic_params)
      redirect_to @topic
    else
      render :edit
    end
  end

  def destroy
    @topic.destroy
    redirect_to root_path
  end

  private

  def set_blog
    @topic = Topic.find(params[:id])
  end

  def topic_params
    params.require(:topic).permit(:title)
  end
end
