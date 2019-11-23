class MemoriesController < ApplicationController
  before_action :set_memory, only: [:show, :edit, :update, :delete, :destroy]

  def index
    @memories = current_user.memories
    render 'index'
  end

  def show
  end

  def new
    @memory = Memory.new
    @emotions = current_user.emotions
    @players = current_user.players
    render "new"
  end

  def edit
    @emotions = current_user.emotions
    @players = current_user.players
  end

  def create
    @memory = current_user.memories.build(memory_params)
    if @memory.save
      redirect_to @memory
    else
      redirect_to "/memories/new"
    end
  end

  def update
    if @memory.update(memory_params)
      redirect_to @memory
    else
      render 'edit'
    end
  end

  def destroy
    @memory.destroy
    redirect_to memories_url
  end

  private

  def set_memory
    @memory = Memory.find(params[:id])
  end

  def memory_params
    params.require(:memory).permit(
      :title,
      :content,
      emotion_ids:[],
      emotions_attributes: [:name],
      player_ids:[],
      players_attributes: [:name]
    )
  end
end