class AnswersController < ApplicationController
  def create
    answer = Answer.new(answer_params)
    # TODO: Make this save an answer

    redirect_to root_path
  end

  def answer_params
    params.require(:answer).permit(:phrase_id, :correct)
  end
end
