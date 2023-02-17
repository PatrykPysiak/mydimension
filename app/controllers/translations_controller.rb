class TranslationsController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :mydimension, :patrykpysiak]


  def norskordbok
    @words=Word.all
    @user=current_user
    @translations=Translation.all
    @sentences=Sentence.all
  end

  def new
    @word = Word.find(params[:word_id])
    @translation = Translation.new

  end

  def create
    @word = Word.find(params[:word_id])
    @translation = Translation.new(translation_params)
    @translation.word = @word
    if @translation.save!
      redirect_to norskordbok_path
    else
      flash[:alert] = "something went wrong with the creation process"
      redirect_to norskordbok_path
    end
  end

  def destroy
    @translation = Translation.find(params[:id])
    return unless @word.user == current_user
    @word.destroy
    redirect_to norskordbok_path, status: :see_other
  end

  private

  def translation_params

    params.require(:translation).permit( :meaning, :word_id)
  end

end
