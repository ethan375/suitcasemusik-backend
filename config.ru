require 'sinatra/base'
require 'sinatra/activerecord'

# controllers
require './controllers/ApplicationController'
require './controllers/QuestionController'

# models
require './models/QuestionModel'

map ('/') {
  run ApplicationController
}

map ('/question') {
  run QuestionController
}
