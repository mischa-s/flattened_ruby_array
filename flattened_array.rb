#!/usr/bin/env ruby

# From https://stackoverflow.com/questions/4477127/ruby-parsing-a-string-representation-of-nested-arrays-into-an-array
require 'yaml'
happyArray = YAML.load(ARGV[0])

# From https://stackoverflow.com/questions/31940239/flatten-a-ruby-array-without-using-built-in-flatten-method
def flattify(array)
  array.each_with_object([]) do |element, flattened|
    flattened.push *(element.is_a?(Array) ? flattify(element) : element)
  end
end

print flattify(happyArray)
