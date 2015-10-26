class ContactController < ApplicationController

  before_action :require_user, only: [:index]

  def index
    @messages = ContactMessage.all.reverse_order
  end

  def new
    @message = ContactMessage.new
  end

  def create
    @message = ContactMessage.new message_params

    if @message.save
      redirect_to home_path, status: 303
    end
  end

  def message_params
    params.require(:contact_message).permit(:name, :email, :message)
  end

end
