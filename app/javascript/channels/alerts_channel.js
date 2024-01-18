import consumer from "channels/consumer"

consumer.subscriptions.create("AlertsChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("Connected to server")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log("Disconnecting from server")
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log('received data: ' + JSON.stringify(data))
  }
});
