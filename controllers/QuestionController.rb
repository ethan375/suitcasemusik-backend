class QuestionController < ApplicationController

  get '/' do 
    @question = Question.all
    @question.to_json
  end 

  post '/' do 
    @question = Question.new
    @body = params[:body]
    @question.save
  end 

end 