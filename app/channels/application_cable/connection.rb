module ApplicationCable
  class Connection < ActionCable::Connection::Base
    def subscribed
      stream_from "notifications_channel"
    end

    def unsubscribed
      # Any cleanup needed when channel is unsubscribed
    end
  end
end
