class EmotionsController < ApplicationController
    before_action :set_emotion, only: [:show, :edit, :update, :delete, :destroy]
  
  def index
    @emotions = current_user.emotions

    render 'index'
  end

  def new
    @emotions = Emotions.new
  end

  def show
    render 'show'
  end

  def edit
    render 'edit'
  end

  def update
    @emotion.update(emotion_params)
    redirect_to @emotion
  end

  private

  def set_emotion
    @emotion = Emotion.find(params[:id])
  end

  def emotion_params
    params.require(:emotion).permit(
      :name
    )
  end
end