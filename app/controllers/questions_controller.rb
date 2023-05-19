class QuestionsController < ApplicationController
  def ask
  end

  def answer
    a = 'Great!'
    b = 'Silly question, get dressed and go to work!'
    c = "I don't care, get dressed and go to work!"
    @coachanswer = ""
    @input = params[:question]
    if @input.include?('?')
      @coachanswer = b
    elsif @input == 'I am going to work'
      @coachanswer = a
    else
      @coachanswer = c
    end
  end
end
