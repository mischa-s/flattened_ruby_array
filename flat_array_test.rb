require_relative "flattened_array.rb"
require "test/unit"

# From https://en.wikibooks.org/wiki/Ruby_Programming/Unit_testing
class TestFlattify < Test::Unit::TestCase

  def test_simple
    assert_equal([2,4,5,6,1], flattify([2,4,[5,6,],1]))
  end

end
