class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true
  validates :token, presence: true
  validates :discord_id, presence: true, uniqueness: true
  validates :discord_discriminator, presence: true

  def self.find_or_create_from_auth_hash(auth)
    user_params = auth[:extra][:raw_info]

    where(email: user_params.email).first_or_initialize.tap do |user|
      user.email = user_params.email
      user.username = user_params.username
      user.token = auth.credentials.token
      user.discord_id = user_params.id
      user.discord_discriminator = user_params.discriminator
      user.discord_avatar = user_params.avatar
      user.save!
    end
  end
end
