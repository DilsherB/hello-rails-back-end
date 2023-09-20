class GreetingsController < ApplicationController
  def random
    random_greeting = Message.order("Random()").first
    render json: {greeting: random_greeting&.content}
  end
end
