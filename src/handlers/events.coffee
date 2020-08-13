{ readdirSync } = require "fs"
{ join } = require "path"

path = join __dirname, "..", "events"

module.exports.run = (client) -> 
  files = readdirSync path

  for file in files 
    evt = require join path, file
    name = file.split ".js"
    client.on name[0], evt.run.bind null, client

  console.log "Loaded #{files.length} events!"