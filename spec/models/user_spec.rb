require 'rails_helper'

describe User do
  context "validations" do
    it "should have valid attributes" do
      should validate_presence_of(:email)
      should validate_presence_of(:username)
      should validate_presence_of(:token)
      should validate_presence_of(:discord_id)
      should validate_presence_of(:discord_discriminator)

      should validate_uniqueness_of(:email)
      should validate_uniqueness_of(:discord_id)
    end
  end
end
