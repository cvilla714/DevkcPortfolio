# class for the BlogsController
class BlogsController < ApplicationController
  before_action :set_blog, only: %i[show edit update destroy toggle_status]
  layout 'blogs'
  access all: %i[show index], user: { except: %i[destroy new edit update edit create toggle_status] }, site_admin: :all
  # GET /blogs
  # GET /blogs.json
  def index
    @blogs = Blog.all
    @page_title = 'DevkcBlogs'
  end

  # GET /blogs/1
  # GET /blogs/1.json
  def show
    @page_title = @blog.title
  end

  # GET /blogs/new
  def new
    @blog = Blog.new
  end

  # GET /blogs/1/edit
  def edit; end

  # POST /blogs
  # POST /blogs.json
  def create
    # @blog = Blog.new(blog_params)
    @blog = Blog.new
    @blog.author_id = current_user.id
    @blog.title = blog_params[:title]
    @blog.body = blog_params[:body]
    @blog.topic_id = blog_params[:topic_id]

    respond_to do |format|
      if @blog.save
        #  @blog.topic.delete.all
        # add_topic
        format.html { redirect_to @blog, notice: 'Blog was successfully created.' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blogs/1
  # PATCH/PUT /blogs/1.json
  def update
    # @blog = Blog.new
    # @blog.author_id = current_user.id
    # @blog.title = blog_params[:title]
    # @blog.body = blog_params[:body]
    # @blog.topic_id = blog_params[:topic_id]

    respond_to do |format|
      # if @blog.save
      # if @blog.update
      #  @blog.topic.delete.all
      if @blog.update(blog_params)
        format.html { redirect_to @blog, notice: 'Blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @blog }
      else
        format.html { render :edit }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
    end
    end
  end

  # DELETE /blogs/1
  # DELETE /blogs/1.json
  def destroy
    @blog.destroy
    respond_to do |format|
      format.html { redirect_to blogs_url, notice: 'Blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def toggle_status
    if @blog.draft?
      @blog.published!
    elsif @blog.published?
      @blog.draft!
    end
    redirect_to blogs_url, notice: 'Post status has been updated.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_blog
    @blog = Blog.friendly.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def blog_params
    params.require(:blog).permit(:title, :body, :topic_id, :author_id)
  end
end
