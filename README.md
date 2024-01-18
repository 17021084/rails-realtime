# README


### Database init and create table

```
rails db:create
rails generate model Notification message:string read:boolean
rails db:migrate
```


###### Create a channel 

```
rails g channel <channel name>
rails g channel alerts
```

###### Something have to note

FrontEnd subscription

```
app/javascript/channels/alerts_channel.js
```

Sent message to channel 

```ruby
ActionCable.server.broadcast("notifications_channel", "Message here")
```