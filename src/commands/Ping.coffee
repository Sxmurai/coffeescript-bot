module.exports = 
  name: "ping",
  category: "General",
  description: "Displays the latency of the bot",

  exec: (client, message) ->
    return message.channel.send "Pong! Latency: **#{client.ws.ping}ms**"