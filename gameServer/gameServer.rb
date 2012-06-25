#!/usr/local/bin/ruby
require 'rubygems'
require 'active_support'
require 'eventmachine'
require 'em-websocket'
require 'json'

EventMachine.run {
	
	puts "Game server opened at localhost on port " + (12331+ARGV[0].to_i).to_s + "!"
	EventMachine::WebSocket.start(:host => "localhost", :port => (12331+ARGV[0].to_i) ) do |ws|
	
		ws.onopen {
			puts "WebSocket connection open from #{ws.object_id}"
		}
		
		ws.onclose { 
			puts "Connection closed from #{ws.object_id}"
		}
		
		ws.onmessage { |msg|
			puts "Received msg from #{ws.object_id}"
		}
	end
}