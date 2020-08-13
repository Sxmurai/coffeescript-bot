{ prefix } = require "../config"

module.exports.run = (client, message) -> 
  if !message.content.startsWith prefix then return
  if message.author.bot then return

  [cmd, ...args] = message.content.toLowerCase().slice(prefix.length).trim().split ///\s+///g

  command = client.commands.find (c) -> c.name == cmd

  if command then command.exec client, message, args