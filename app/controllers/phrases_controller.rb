class PhrasesController < ApplicationController
  before_action :set_phrase, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  before_action do
    raise ActionController::RoutingError.new("Not Found") unless current_user.is_admin
  end

  def index
    @phrases = Phrase.order("created_at desc")
  end

  def show
  end

  def new
    @phrase = Phrase.new
  end

  def edit
  end

  def create
    @phrase = Phrase.new(phrase_params)

    if @phrase.save
      redirect_to phrases_url, notice: "Phrase was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    respond_to do |format|
      if @phrase.update(phrase_params)
        format.html { redirect_to phrase_url(@phrase), notice: "Phrase was successfully updated." }
        format.json { render :show, status: :ok, location: @phrase }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @phrase.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @phrase.destroy

    respond_to do |format|
      format.html { redirect_to phrases_url, notice: "Phrase was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  def set_phrase
    @phrase = Phrase.find(params[:id])
  end

  def phrase_params
    params.require(:phrase).permit(:pinyin, :chinese_simplified)
  end
end
