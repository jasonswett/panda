class FlashCardsController < ApplicationController
  def index
    @phrase = Phrase.all.sample

    pinyin_phrases = Phrase.all.map(&:pinyin)
    @options = [@phrase.pinyin]
    @options[1] = (pinyin_phrases - @options).sample
    @options[2] = (pinyin_phrases - @options).sample
    @options.shuffle!

    @answers = @options.map do |option|
      Answer.new(text: option, phrase: @phrase, correct: option == @phrase.pinyin)
    end
  end
end
