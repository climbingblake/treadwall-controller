require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require 'http'
require 'sinatra/activerecord'
require "sinatra/reloader" if development?

Bundler.require
set :database, {adapter: "sqlite3", database: "foo.sqlite3"}
set :port, 80
set :bind, '0.0.0.0'
set :method_override, true





# class Problem < ActiveRecord::Base
#   has_many :leds
# end
# class Led < ActiveRecord::Base
#   belongs_to :problem
# end



get '/' do
  @angle      = 0
  @increment  = 15
  result      = system("python /home/pi/servo.py #{@angle.to_f}")
  haml :index, layout: :application
end


get '/servo/:angle' do 
  if params[:angle] and params[:angle].to_f > 180
    angle = 180
  elsif params[:angle] and params[:angle].to_f < 0
    angle = 0
  else
    angle = params[:angle]
  end

  result = system("python /home/pi/servo.py #{angle}")
  if result
    {angle: angle , success: true}.to_json
  else
    {success: false, angle: angle}.to_json
  end
end

get '/servo/button' do 
  response = HTTP.get("#{LED_IP_ADDRESS}/button", :params => {:foo => 90})
  @problems = Problem.all
  haml :index
end

# get '/program/stop' do
#   Process.kill("TERM", @python_process)
#   Process.wait(@python_process)
# end

# get '/program/:id?' do
#   #result = system("python /home/pi/program.py #{params[:id]}")
#   @python_process = Process.spawn("python /home/pi/program.py #{params[:id]}")
# end
