class NotificationBroadcastJob < ApplicationJob
  queue_as :default

  def perform(*args)
    ActionCable.server.broadcast("notifications_channel", notification: render_notification(notification))
  end

  private

  def render_notification(notification)
    ApplicationController.renderer.render(partial: "notifications/notification", locals: { notification: notification })
  end
end
