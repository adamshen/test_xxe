require 'active_support/all'
require 'erb'

xml = ERB.new(File.read("xxe.xml.erb")).result
puts "raw xml:"
puts xml
puts '==============='

result = Hash.from_xml(xml)
puts "decode result:"
puts result
