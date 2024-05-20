class QuestionsController < ApplicationController
  def ask; end

  def answer
    @given_answer = params[:user_answer]
    if @given_answer == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @given_answer.include?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to"
    end
  end
end
