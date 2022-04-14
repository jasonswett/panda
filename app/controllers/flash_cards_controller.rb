class FlashCardsController < ApplicationController
  def index
    @word = Word.all.sample

    pinyin_words = Word.all.map(&:pinyin)
    @options = [@word.pinyin]
    @options[1] = (pinyin_words - @options).sample
    @options[2] = (pinyin_words - @options).sample
    @options.shuffle!
  end
end
