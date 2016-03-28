class StaticPagesController < ApplicationController
  def home
    if logged_in?
      current_user.update_last_seen
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
    if logged_in?
      current_user.update_last_seen
    end
  end

  def about
    if logged_in?
      current_user.update_last_seen
    end
  end

  def contact
    if logged_in?
      current_user.update_last_seen
    end
  end
end