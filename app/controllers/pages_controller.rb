class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
  end

  def about
    @skills = Skill.all.order("title ASC")
    @birthday = Date.new(1990,12,22)
  end

  def contact
  end

  def news
    @tweets = SocialTool.twitter_search
  end
end
