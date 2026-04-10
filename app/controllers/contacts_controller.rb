class ContactsController < ApplicationController
  def create
    ContactMailer.contact_email(
      params[:name],
      params[:email],
      params[:message]
    ).deliver_now

    redirect_to root_path, notice: "Message sent!"
  end
end
