class HomeController < ApplicationController
  def index
    @tournaments = Tournament.all.order("scheduled_at DESC").limit(5)
  end
end
