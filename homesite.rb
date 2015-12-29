require 'rubygems'
require 'sinatra'
require 'tilt/erb'
require 'gon-sinatra'
require 'sinatra/reloader'
require 'sinatra/partial'

module HomeSite
  class SinatraApp < Sinatra::Base
    register Gon::Sinatra
    register Sinatra::Partial
    Tilt.register Tilt::ERBTemplate, 'html.erb'

    configure do
      set :environment, :development
      set :partial_template_engine, :erb
      set :partial_underscores, true
      set :reloader, true
    end

    def self
    end

    get '/' do
      @links = %w(Portfolio Bio Contact Blog)
      @path_array = []
      @text = Dir['public/images/cottage/*.jpg']
      @text.each do |picture_path|
        corrected_path = picture_path.sub('public/', '')
        @path_array.push(corrected_path)
      end
      erb :index, locals: { path_array: @path_array, links: @links }
    end

    get '/home' do
      redirect to('/')
    end

    get '/bio' do
      redirect to('/')
    end

    get '/blog' do
      redirect to('/')
    end

    get '/contact' do
      redirect to('/')
    end

    get '/portfolio' do
      @links = %w(Home Bio Contact Blog)
      erb :portfolio, locals: { links: @links }
    end
  end
end
