class EmotionsController < ApplicationController
    before_action :set_emotion, only: [:show, :edit, :update, :delete, :destroy]
    layout "emotions_layout"

  def index
    @emotions = current_user.emotions.uniq

    render 'index'
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
    @emotion = Emotion.find(params[:id])
  end

  def emotion_params
    params.require(:emotion).permit(
      :name
    )
  end
end