class FlashCardsController < ApplicationController
  def index
    @word = Word.all.sample

    @options = [@word.english, "deputy", "croissant"].shuffle
  end
end
