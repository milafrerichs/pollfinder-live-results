require 'sinatra/base'
require 'sinatra'
require_relative 'ms_polling'
require_relative 'live-results'

module PollingService
  class App < Sinatra::Base

    before do
       content_type :json
       headers 'Access-Control-Allow-Origin' => '*', 
                'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST']  
    end
    get '/' do
      'Hello World'
    end

    get '/find/:street/:nr' do |street, nr|
      ms = MuensterPollStation.new
      { wahlbezirk_nr: ms.find(street, nr) }.to_json

    end
    get '/live-results' do
      content_type :js
      LiveResults.new.results
    end
  end
end
