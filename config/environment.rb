
# Set up gems listed in the Gemfile.
# See: http://gembundler.com/bundler_setup.html
#      http://stackoverflow.com/questions/7243486/why-do-you-need-require-bundler-setup
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)

require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

# Require gems we care about
require 'rubygems'

require 'uri'
require 'pathname'
require 'dotenv'
Dotenv.load
require 'pg'
require 'active_record'
require 'logger'
require 'pry'
require 'sinatra'
require "sinatra/reloader" if development?

require 'erb'

# Some helper constants for path-centric logic
APP_ROOT = Pathname.new(File.expand_path('../../', __FILE__))

APP_NAME = APP_ROOT.basename.to_s

# Set up the controllers and helpers
Dir[APP_ROOT.join('app', 'controllers', '*.rb')].each { |file| require file }
Dir[APP_ROOT.join('app', 'helpers', '*.rb')].each { |file| require file }

# Set up the database and models
require APP_ROOT.join('config', 'database')

#Sound CLoud API
require 'soundcloud'

# begin
CLIENT = SoundCloud.new({:client_id => ENV['SOUNDCLOUD_CLIENT_ID']})
# rescue SoundCloud::ResponseError => e
#  p e.response
# end

# CLIENT = Soundcloud.new(:client_id => 'ENV[SOUNDCLOUD_CLIENT_ID]',
#                         :client_secret => 'ENV[SOUNDCLOUD_SECRET]',
#                         :username => 'zahid.jethani@gmail.com',
#                         :password => 'Brainstormin3')