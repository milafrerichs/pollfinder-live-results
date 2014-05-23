require 'rubygems'
require 'bundler'
Bundler.require
require './polling_service'

run PollingService::App
