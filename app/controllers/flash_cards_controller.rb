class FlashCardsController < ApplicationController
  def index
    @phrase = Phrase.all.sample

    pinyin_phrases = Phrase.all.map(&:pinyin)
    @options = [@phrase.pinyin]
    @options[1] = (pinyin_phrases - @options).sample
    @options[2] = (pinyin_phrases - @options).sample
    @options.shuffle!
  end
end
