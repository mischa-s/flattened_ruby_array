#!/usr/bin/env ruby

# From https://stackoverflow.com/questions/31940239/flatten-a-ruby-array-without-using-built-in-flatten-method
def flattify(array)
  array.each_with_object([]) do |element, flattened|
    flattened.push *(element.is_a?(Array) ? flattify(element) : element)
  end
end
