class Tournament < ApplicationRecord
    has_many :players, dependent: :destroy
    has_many :rounds, dependent: :destroy

    enum tournament_type: {
      trial: "trial",
      master: "master",
      invitational: "invitational",
    }

    enum status: {
      scheduled: "scheduled",
      registering: "registering",
      in_progress: "in progress",
      completed: "completed",
    }
end
