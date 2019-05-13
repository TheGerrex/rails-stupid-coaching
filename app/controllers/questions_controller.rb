class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @test = params[:question]
    if @test == "I am going to work"
      @response = 'Great!'
    elsif @test.include? '?'
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
