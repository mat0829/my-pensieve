class EmotionsController < ApplicationController
    before_action :set_emotion, only: [:show, :edit, :update, :delete, :destroy]
    layout "emotions_layout"

  def index
    @emotions = current_user.emotions.alphabetized.uniq

    render 'index'
  end

  def show
    @emotion.memories = @emotion.memories.where(user_id: current_user.id)
  end

  def new
    @emotion = current_user.emotions.new
  end

  def edit
  end

  def update
    if @emotion.update(emotion_params)
      redirect_to @emotion
    else
      render 'edit'
    end
  end

  def destroy
    @emotion.destroy

    redirect_to emotions_url
  end

  private

  def set_emotion
    @emotion = current_user.emotions.find(params[:id])
  end

  def emotion_params
    params.require(:emotion).permit(
      :name
    )
  end
end