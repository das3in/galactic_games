class TournamentsController < ApplicationController
  before_action :set_tournament

  def show
    @available_slots = @tournament.player_slots - @tournament.players.count
    puts @tournament.status
  end

  private

  def set_tournament
    @tournament = Tournament.find(params[:id])
  end
end
