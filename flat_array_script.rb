require_relative "flattened_array.rb"

# From https://stackoverflow.com/questions/4477127/ruby-parsing-a-string-representation-of-nested-arrays-into-an-array

require 'yaml'
happyArray = YAML.load(ARGV[0])

print flattify(happyArray)
