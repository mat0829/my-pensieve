class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :delete, :destroy]
  layout "players_layout"

  def index
    @players = current_user.players.alphabetized.uniq

    render 'index'
  end

  def show
    @player.memories = @player.memories.where(user_id: current_user.id)
  end

  def new
    @player = current_user.players.new
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
    @player = current_user.players.find(params[:id])
  end

  def player_params
    params.require(:player).permit(
      :name
    )
  end
end