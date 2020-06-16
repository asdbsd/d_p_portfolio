class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @skills = Skill.all.order("title ASC")
  end

  def contact
  end

  def news
    @tweets = SocialTool.twitter_search
  end
end
