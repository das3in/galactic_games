class TournamentsController < ApplicationController
  before_action :set_tournament

  def show
    @available_slots = @tournament.player_slots - @tournament.players.count
    @player = @tournament.players.find_by(user: current_user)
    @current_round = @tournament.rounds.where(status: "in_progress")
  end

  private

  def set_tournament
    @tournament = Tournament.find(params[:id])
  end
end
