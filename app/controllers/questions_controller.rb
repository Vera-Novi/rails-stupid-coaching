class QuestionsController < ApplicationController
  def ask
    @answer = params[:answer]
  end

  def answer
    if params[:answer]
      @question = params[:answer]
      puts @question
      if @question == 'I am going to work'
        @coach_answer = 'Great!'

      elsif @question.include?('?')
        @coach_answer = 'Silly question, get dressed and go to work!'

      else
        @coach_answer = 'I dont care, get dressed and go to work!'

      end
    else
      @coach_answer = "Ask something"
    end
  end
end
