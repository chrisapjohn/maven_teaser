class MessagesController < ApplicationController

  def index
    if current_user
      @user = current_user
    elsif
      @user = current_advisor
    end
  end

  def create
    current_user.send_message(@advisor, :body, :subject)
    redirect_to :messages
  end

  def show
    @message = Message.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @message }
    end
  end

  def reply
  	@user.reply_to_sender(receipt, )
  end
end