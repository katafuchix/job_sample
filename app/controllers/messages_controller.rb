class MessagesController < ApplicationController
  def index
    @messages = Message.all
  end

  def create
    @message = Message.create!(message_params)
    AfterPostJob.perform_later
  end

  private

  # Strong Parameters はサボらずに使っておくこととします
  def message_params
    params.require(:message).permit(:content)
  end

end
