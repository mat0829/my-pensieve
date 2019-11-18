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
      @memory.emotion_ids = params[:emotions]
      @memory.player_ids = params[:players]
      if !params["emotion"]["name"].empty?
        @memory.emotions << Emotion.find_or_create_by(name: params["emotion"]["name"].capitalize)
      end
      if !params["player"]["name"].empty?
        @memory.players << Player.find_or_create_by(name: params["player"]["name"].capitalize)
      end
      if @memory.save
        redirect_to @memory
      else
        redirect to "/memories/new"
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
      :content
    )
  end
end