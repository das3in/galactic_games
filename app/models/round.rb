class Round < ApplicationRecord
  belongs_to :seat_1, class_name: "Player", foreign_key: "seat_1"
  belongs_to :seat_2, class_name: "Player", foreign_key: "seat_2"
  belongs_to :winner, class_name: "Player", foreign_key: "winner"
  belongs_to :tournament
end
