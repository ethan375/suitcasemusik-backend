class AnswerController < ApplicationController 
  
  get '/' do 
    @answer = Answer.all
    @answer.to_json
  end 

  post '/' do 
    @answer = Answer.new
    @body = params[:body]
    @answer.save
  end 
end 