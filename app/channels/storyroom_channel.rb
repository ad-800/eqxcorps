class StoryroomChannel < ApplicationCable::Channel
  def subscribed
    storyroom = Storyroom.find(params[:id])
    stream_from storyroom
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
