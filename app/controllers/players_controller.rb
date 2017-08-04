class PlayersController < ApplicationController
  def new
    @tournament = Tournament.find(params[:tournament_id])
  end
end
