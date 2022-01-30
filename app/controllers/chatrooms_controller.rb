class ChatroomsController < ApplicationController
  before_action :require_user

  # GET /chatrooms or /chatrooms.json
  def index
    @message = Message.new
    @messages = Message.all
  end
end
