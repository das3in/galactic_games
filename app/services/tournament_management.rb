class TournamentManagement
  def initialize(tournament)
    @tournament = Tournament.find(tournament)
  end

  def rank_players(players)
    players.order(:points)
  end

  def create_pairings(players)
    array_players = players.to_a
    pairings = []

    while array_players.count > 1
      pairing = array_players.pop(2)
      pairings << pairing
    end

    pairings
  end

  def generate_round(pairing)
    tournament.rounds.create(
      seat_1: pairing[0],
      seat_2: pairing[1],
      round_number: tournament.round_number,
    )
  end

  def run_round
    ranked_players = rank_players(tournament.players)
    pairings = create_pairings(ranked_players)
    pairings.each do |pair|
      generate_round(pair)
    end

    puts tournament.rounds.where(round_number: tournament.round_number)

    tournament.round_number = tournament.round_number + 1
    tournament.save
  end

  private

  attr_reader :players, :tournament
end
