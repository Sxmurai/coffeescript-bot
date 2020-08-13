{ Embed } = require "@kyudiscord/neo"

module.exports = 
  name: "help",
  category: "General",
  description: "Displays the this command",

  exec: (client, message, args) -> 
      categories = [...new Set client.commands.map (cmd) -> cmd.category];
      embed = new Embed()

      for id in categories
        category = client.commands.filter (cmd) -> cmd.category == id
        embed.addField "#{id} (#{category.size})", category.map((cmd) -> "`#{cmd.name}`").join ", "

      return message.channel.send (msg) -> msg.setEmbed(embed)