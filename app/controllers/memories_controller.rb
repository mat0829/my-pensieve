class MemoriesController < ApplicationController
  def index
    @memories = current_user.memories
    render 'index'
  end
end