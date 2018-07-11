class ApplicationController < ActionController::Base

  before_action :nav_menu, :authenticate_user


  def nav_menu
    @pages = Page.all
    @log = controller_name
    @log1 = action_name
  end

  def authenticate_user
    if !model_signed_in? && action_name == 'edit'
      redirect_to pages_url and return
    end
  end

end
