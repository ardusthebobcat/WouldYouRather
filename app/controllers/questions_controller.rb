class QuestionsController < ApplicationController
  def index
    @questions = Question.all

  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to root_path
    else
      redirect_to :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])

  # binding.pry
    # if params[:votes_A]
    #     if params[:votes_A] == nil
    #       question_vote_params[:votes_A] == 1
    #     end
    #     question_vote_params[:votes_A] =+1
    #
    #   question_vote_params[:total]  =+ 1
      @question.update(question_params)
      redirect_to root_path

    # else
    #
    #   if @question.update(question_params)
    #     redirect_to root_path
    #   else
    #     render :edit
    #   end
    #
    # end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to root_path
  end

  private
  def question_params
    params.require(:question).permit(:answer_A, :picture_A, :answer_B, :picture_B, :votes_A, :votes_B, :total)
  end
  # def question_vote_params
  #   params.require(:question).permit(:votes_A, :votes_B, :total)
  # end
end
