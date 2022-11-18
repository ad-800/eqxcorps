class Api::V1::SentencesController < ApplicationController
  def create
    sentence = Sentence.create(sentence_params)
    render json: sentence
  end

  private

  def sentence_params
    params.require(:sentence).permit(:content, :user_id, :stories_id)
  end
end
