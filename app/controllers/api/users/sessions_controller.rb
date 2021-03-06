#encoding: UTF-8
class Api::Users::SessionsController < Api::BaseApiController

  before_filter :ensure_api_access, :only => [:destroy]
  before_filter :check_valid_login, :only => [:create]
  before_filter :check_valid_login_fb, :only => [:create_fb]

  def create
    login @user
  end

  def create_fb
    login @user
  end

  def destroy
    logout @user
  end

end
