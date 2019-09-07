class BuilderController < ApplicationController
  def index
    @card = Card.first
    p @card
  end
end
