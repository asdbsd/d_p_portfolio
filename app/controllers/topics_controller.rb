class TopicsController < ApplicationController
  layout "blog"
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(8)
    else
      @blogs = @topic.blogs.published.recent.page(params[:page]).per(8)
    end
  end

end
