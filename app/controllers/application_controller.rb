class ApplicationController < ActionController::Base
    # SessionsHelperに記載されているメソッドを、自分のインスタンスメソッドとして取り込むことができる。
    # これをMix-inという。
    include SessionsHelper

private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end

  def counts(user)
    @count_microposts = user.microposts.count
    @count_followings = user.followings.count
    @count_followers = user.followers.count
  end
end
