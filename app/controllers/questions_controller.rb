class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = ''
    @question = params[:answer]
    @answer = case params[:answer]
              when 'I am going to work' then 'Great!'
              when /\?$/ then 'Silly question, get dressed and go to work!'
              else 'I don\'t care, get dressed and go to work!'
              end
  end
end
