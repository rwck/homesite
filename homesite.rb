require 'rubygems'
require 'sinatra'
require 'tilt/erb'
require 'gon-sinatra'
require 'sinatra/reloader'
require 'sinatra/partial'
require_relative 'interests' # this file has a big array in it

module HomeSite
  class SinatraApp < Sinatra::Base
    register Gon::Sinatra
    register Sinatra::Partial
    Tilt.register Tilt::ERBTemplate, 'html.erb'

    configure do
      set :environment, :production
      set :partial_template_engine, :erb
      set :partial_underscores, true
      set :reloader, true
    end

    get '/' do
      @interests = interests
      @links = %w(Portfolio Bio Contact)
      erb :index, locals: { links: @links, interests: @interests }
    end

    get '/home' do
      redirect to('/')
    end

    get '/bio' do
      @interests = interests
      @links = %w(Home Portfolio Contact)
      erb :bio, locals: { links: @links }
    end

    get '/contact' do
      erb :contact
    end

    get '/portfolio' do
      @links = %w(Home Bio Contact)
      erb :portfolio, locals: { links: @links }
    end
  end
end
