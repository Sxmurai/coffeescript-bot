{ readdirSync } = require "fs"
{ join } = require "path"

path = join __dirname, "..", "commands"

module.exports.run = (client) -> 
  for file in readdirSync path
    cmd = require join path, file
    client.commands.set cmd.name, cmd

  console.log "Loaded #{client.commands.size} commands!"