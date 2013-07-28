class Members::DashboardController < Members::ApplicationController

  def home
    @blog_posts = BlogPost.limit(5).page params[:page]
  end
end
