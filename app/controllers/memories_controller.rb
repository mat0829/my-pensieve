class MemoriesController < ApplicationController
  def index
    @memories = current_user.memories
    render 'index'
  end

  def new
    @emotions = current_user.emotions
    @players = current_user.players
    render 'new'
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
      redirect to @memory
    else
      redirect to new_memory_path
    end
  end

  private

  def memory_params
    params.require(:memory).permit(
      :title,
      :content
    )
  end
end