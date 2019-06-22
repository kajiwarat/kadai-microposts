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
end
