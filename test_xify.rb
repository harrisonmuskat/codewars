require_relative "xify"
require "test/unit"

class TestXify < Test::Unit::TestCase
  def test_xify
    assert_equal("1x24x5x6", xify("12456"))
    assert_equal("2x3x4x5x7", xify("23457"))
    assert_equal("2468", xify("2468"))
    assert_equal("1x3x5x7x9", xify("13579"))
  end
end
