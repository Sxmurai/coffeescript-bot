{ Client, Store } = require "@kyudiscord/neo"
{ token } = require "./config"

commands = require "./handlers/commands"
events = require "./handlers/events"

client = new Client token
client.commands = new Store()

commands.run client
events.run client

client.connect()