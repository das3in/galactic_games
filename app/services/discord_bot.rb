require "discordrb"

bot = Discordrb::Bot.new token: ENV["DISCORD_BOT_TOKEN"], client_id: ENV["DISCORD_CLIENT_ID"]

puts "This bot's invite URL is #{bot.invite_url}."
puts 'Click on it to invite it to your server.'

bot.message(with_text: 'Ping!') do |e|
  e.respond "Pong!"
end

bot.run
