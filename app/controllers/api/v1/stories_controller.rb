class Api::V1::StoriesController < ApplicationController
  def show
    @story = Story.find(params[:id])
    @sentences = Sentence.where(stories_id: @story.id)
  end
end
