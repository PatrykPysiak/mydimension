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

  def edit
    @translation = Translation.find(params[:id])
  end

  def update
    @translation = Translation.find(params[:id])
    Translation.update(params[:meaning, :transindefsing, :transdefsing, :transindefplur, :transdefplur])
    redirect_to norskordbok_path
  end

  def destroy
    @translation = Translation.find(params[:id])
    @translation.destroy
    redirect_to norskordbok_path, status: :see_other
  end

  private

  def translation_params

    params.require(:translation).permit( :meaning, :word_id, :transindefsing, :transdefsing, :transindefplur, :transdefplur)
  end

end
