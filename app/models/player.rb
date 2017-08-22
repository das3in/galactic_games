class Player < ApplicationRecord
  belongs_to :user
  belongs_to :tournament

  def rounds
    Round.where("seat_1 = ? OR seat_2 = ?", self.id, self.id)
  end

  def strength_of_schedule; end

  def extended_strength_of_schedule; end
end
