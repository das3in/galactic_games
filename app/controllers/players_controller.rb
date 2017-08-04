class PlayersController < ApplicationController
  before_action :set_tournament, only: [:new, :create, :destroy]

  def new
    @available_slots = @tournament.player_slots - @tournament.players.count
    @player = @tournament.players.find_by(user: current_user)
  end

  def create
    @tournament.players.create(user: current_user)

    redirect_to tournament_register_path(@tournament)
  end

  def destroy
    player = Player.find(params[:id])

    if player.user == current_user
      player.destroy
    end

    redirect_to tournament_register_path(@tournament)
  end

  private

  def set_tournament
    @tournament = Tournament.find(params[:tournament_id])
  end
end
