class PagesController < ApplicationController
  def home
  end

  def hello
    ActionCable.server.broadcast "AlertsChannel", "Hello from rails"
  end
end
