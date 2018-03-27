class QuestionController < ApplicationController
  
  get '/' do 
    @question = Question.all
    # p @questions
    @question.to_json
  end

  post '/' do 
    payload_body = request.body.read
    payload = JSON.parse(payload_body).symbolize_keys
    @question = Question.new
    @question.body = payload[:body] 
    @question.save
    @question.to_json
  end 

end 