require 'rubygems'
require 'cucumber'
require 'rspec'
require 'fileutils'
require 'ginger'
require 'will_paginate'
require 'active_record'

$:.unshift File.dirname(__FILE__) + '/../../lib'
Dir[File.join(File.dirname(__FILE__), '../../vendor/*/lib')].each do |path|
  $:.unshift path
end

require 'cucumber/thinking_sphinx/internal_world'

world = Cucumber::ThinkingSphinx::InternalWorld.new
world.configure_database

require "thinking_sphinx"

ActiveRecord::Base.send(:include, ThinkingSphinx::ActiveRecord)

world.setup
