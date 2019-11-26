class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :delete, :destroy]
  layout "players_layout"

  def index
    @players = current_user.players.alphabetized

    render 'index'
  end

  def new
    @players = Players.new
  end

  def show
  end

  def edit
  end

  def update
    if @player.update(player_params)
      redirect_to @player
    else
      render 'edit'
    end
  end

  def destroy
    @player.destroy

    redirect_to players_url
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(
      :name
    )
  end
end