class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  def current_user
    @user = (User.find_by(id: session[:user_id]) || User.new)
  end

  def logged_in?
    current_user.id != nil
  end

  def in_group?
    current_user.groups.any?
  end

  def require_logged_in
    return redirect_to controller: 'sessions', action: 'new' unless logged_in?
  end

  def require_group
    return redirect_to controller: 'poems', action: 'index' unless in_group?
  end

end
