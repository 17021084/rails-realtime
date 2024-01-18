class NotificationsController < ApplicationController
  def create
    @notification = Notification.create(message: params[:message], read: false)
    head :ok
  end
end
