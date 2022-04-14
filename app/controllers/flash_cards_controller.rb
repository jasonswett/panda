class FlashCardsController < ApplicationController
  def index
    @word = Word.all.sample

    english_words = Word.all.map(&:english)
    @options = [@word.english]
    @options[1] = (english_words - @options).sample
    @options[2] = (english_words - @options).sample
    @options.shuffle!
  end
end
