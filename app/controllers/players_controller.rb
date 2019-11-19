class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :delete, :destroy]
  
  def index
    @players = current_user.players

    render 'index'
  end

  def new
    @players = Players.new
  end

  def show
    render 'show'
  end

  def edit
    render 'edit'
  end

  def update
    @player.update(player_params)
    redirect_to @player
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