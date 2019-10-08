class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build  # for form_with
      @microposts = current_user.feed_microposts.order(id: :desc).page(params[:page])
    end
  end
end
