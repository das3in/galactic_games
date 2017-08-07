class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  helper_method :current_match

  def authenticate
    redirect_to root_path unless user_signed_in?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_signed_in?
    !!current_user
  end

  def current_match
    if @current_user && @current_user.active_player_id
      player = @current_user.players.find(@current_user.active_player_id)

      player.rounds.find_by(status: "in_progress")
    end
  end
end
