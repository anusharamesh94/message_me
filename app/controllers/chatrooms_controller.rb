class ChatroomsController < ApplicationController
  before_action :require_user

  # GET /chatrooms or /chatrooms.json
  def index
    @messages = Message.all
  end
end
