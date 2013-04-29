class StoryController < ApplicationController
  def index
    render :layout => 'story', formats: [:pdf]
  end
  
end