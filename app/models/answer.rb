class Answer
  include ActiveModel::Model
  attr_accessor :text, :phrase, :phrase_id, :correct

  def phrase_id
    phrase.id
  end
end
