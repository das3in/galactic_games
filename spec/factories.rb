FactoryGirl.define do
  factory :round do
    seat_1 nil
    seat_2 nil
    round_number 1
    seat_1_score 1
    seat_2_score 1
    winner nil
    tournament tournament
  end
  factory :player do
    user user
    tournament tournament
    wins 1
    losses 1
    points 1
    status "MyString"
  end
  factory :tournament do
    name "MyString"
    scheduled_at "2017-08-02 21:48:33"
    player_slots 8
    status "registering"
  end
  factory :user do
    email "MyString"
    username "MyString"
    provider "MyString"
    discord_id "MyString"
    discord_avatar "MyString"
    discord_discriminator "MyString"
    token "MyString"
  end
end
