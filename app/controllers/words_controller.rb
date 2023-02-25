class WordsController < ApplicationController
 # skip_before_action :authenticate_user!, only: [ :mydimension, :patrykpysiak]


  def norskordbok
    @words=Word.all
    @user=current_user
    @translations=Translation.all
    @sentences=Sentence.all
  end

  def new
    @user = current_user
    @word = Word.new #[:user_id => @user]

  end

  def create
    @word = Word.new(word_params)
    @word.user = current_user
    if @word.save!
      redirect_to norskordbok_path
    else
      flash[:alert] = "something went wrong with the creation process"
      redirect_to norskordbok_path
    end
  end

  def edit
    @user = current_user
    @word = Word.find(params[:id])
  end

  def update
    @word = Word.find(params[:id])
    Word.update(word_params)
    redirect_to norskordbok_path
  end


  def destroy
    @word = Word.find(params[:id])
    return unless @word.user == current_user

    @word.destroy
    redirect_to norskordbok_path, status: :see_other
  end

  private

  def word_params
    params.require(:word).permit( :core, :family, :comment, :sentence_id, :user_id,                                                                       #general word params
                                 :indefsing, :defsing, :indefplur, :defplur,                                                                              #noun params
                                 :masfem, :neuter, :partic, :comperat, :supindef, :supdef,                                                                #adjective params
                                 :infinit, :pres, :preterit, :presperf, :imperat, :perfparmasfem, :perfparneuter, :perfparartic, :perfparplur, :prespar   #verb params
                                )
  end

end
