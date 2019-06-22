class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build #form_width 用
      @microposts = current_user.microposts.order(id: :desc).page(params[:page]) #form_width 用
    end
  end
end
