class Tournament < ApplicationRecord
    has_many :players
    has_many :rounds

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
