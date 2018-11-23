class EmailController < ApplicationController
  def index
    @emails = Email.all
    @mails = Email
    respond_to do |f|
      f.js
    end
  end

  def show
    @email = Email.find(params[:id])
    @email.update(read: !@email.read)
    @email.save
    respond_to do |f|
      f.js
    end
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |f|
      f.js
    end
  end
end
