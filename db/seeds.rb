# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

test1 = User.create(
  email: "test1@example.com",
  username: "test1",
  token: "230480239",
  discord_id: "askdjflj",
  discord_discriminator: "1234",
)
test2 = User.create(
  email: "test2@example.com",
  username: "test2",
  token: "230480239",
  discord_id: "xcnvxcvn",
  discord_discriminator: "1234",
)
test3 = User.create(
  email: "test3@example.com",
  username: "test3",
  token: "230480239",
  discord_id: "9944949",
  discord_discriminator: "1234",
)
test4 = User.create(
  email: "test4@example.com",
  username: "test4",
  token: "230480239",
  discord_id: "2222222222",
  discord_discriminator: "1234",
)
test5 = User.create(
  email: "test5@example.com",
  username: "test5",
  token: "230480239",
  discord_id: "333333333333",
  discord_discriminator: "1234",
)
test6 = User.create(
  email: "6@example.com",
  username: "test6",
  token: "230480239",
  discord_id: "44444444444444",
  discord_discriminator: "1234",
)
test7 = User.create(
  email: "test7@example.com",
  username: "test7",
  token: "230480239",
  discord_id: "66666666555666",
  discord_discriminator: "1234",
)
test8 = User.create(
  email: "test8@example.com",
  username: "test8",
  token: "230480239",
  discord_id: "123123123123",
  discord_discriminator: "1234",
)

tournament = Tournament.create(
  name: "First tournament",
  scheduled_at: Date.new(2017,9,1),
)

tournament.players.create(user: test1)
tournament.players.create(user: test2)
tournament.players.create(user: test3)
tournament.players.create(user: test4)
tournament.players.create(user: test5)
tournament.players.create(user: test6)
tournament.players.create(user: test7)
tournament.players.create(user: test8)
