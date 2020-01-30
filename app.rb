require 'bundler'
Bundler.require
require 'pry'

$:.unshift File.expand_path("./../lib", __FILE__)
require 'app/player'
require 'app/boardcase'
require 'app/board'
require 'app/game'
require 'view/application'

Application.new 





