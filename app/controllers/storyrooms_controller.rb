class StoryroomsController < ApplicationController
  def show
    @storyroom = Storyroom.find(params[:id])
    @story = @storyroom.story_id
  end
end
