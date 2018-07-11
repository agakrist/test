class ApplicationController < ActionController::Base

  before_action :nav_menu, :authenticate_user


  def nav_menu
    @pages = Page.all
  end

  def authenticate_user
    @admin = 'admin@mail.com'
    @i_am_admin = admin_check
  end

  def admin_check
    if model_signed_in?
      if current_model.email == @admin
        true
      else
        false
      end
    else
      false
    end
  end

end
