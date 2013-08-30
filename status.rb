# encoding: utf-8
require 'aws-sdk'
require './instances.rb'

AWS.config(YAML.load(File.read("./aws.yml")))

$instances.each do |ins|
	instance = AWS::EC2.new.instances[ins[:id]]
	p "#{ins[:name]} is #{instance.status}"
end
