class PlayersController < ApplicationController
  def new
    @tournament = Tournament.find(params[:tournament_id])
    @available_slots = @tournament.player_slots - @tournament.players.count
  end
end
