class PlayersController < ApplicationController
  before_action :set_tournament, only: [:new, :create, :destroy]

  def new
    @available_slots = @tournament.player_slots - @tournament.players.count
    @player = @tournament.players.find_by(user: current_user)
  end

  def create
    if !@tournament.slots_full && @tournament.registering?
      player = @tournament.players.create(user: current_user)
      current_user.active_player_id = player.id
      current_user.save!
    end

    redirect_to tournament_register_path(@tournament)
  end

  def destroy
    player = Player.find(params[:id])

    if player.user == current_user
      current_user.active_player_id = nil
      current_user.save!
      player.destroy
    end

    redirect_to tournament_register_path(@tournament)
  end

  private

  def set_tournament
    @tournament = Tournament.find(params[:tournament_id])
  end
end
