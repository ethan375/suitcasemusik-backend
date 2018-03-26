require 'sinatra/base'
require 'sinatra/activerecord'

# Controllers
require './controllers/ApplicationController'
require './controllers/QuestionController'
require './controllers/AnswerController'

# Models
require './models/AnswerModel'
require './models/QuestionModel'

map ('/') {
  run ApplicationController
}

map ('/questions') {
  run QuestionController
}

map ('/answers') {
  run AnswerController
}