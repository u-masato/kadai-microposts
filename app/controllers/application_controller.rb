class ApplicationController < ActionController::Base
  # 全てのコントローラに継承されているため
  # ApplicationControllerで定義したメソッドは
  # 全てのコントローラで使用できるようになる
  include SessionsHelper

  private
  
  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
end
