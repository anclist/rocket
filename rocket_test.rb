require "minitest/autorun"
require 'minitest/pride'
require_relative "rocket"

class RocketTest < Minitest::Test
  # Write your tests here!


  def setup
    @rocket = Rocket.new
  end

  def teardown
    @rocket = nil
  end

  def test_sets_default_name
    refute @rocket.name.nil?
  end

  def test_rewrite_name
    result = @rocket.name = "Paul"
    expect = "Paul"

    assert_equal(result, expect)
  end

  def test_flying?
    assert_equal(@rocket.flying?, false)
  end


  def test_that_rocket_will_lift_off_when_not_flying
    # arrange
    skip
    # act
    result = @rocket.lift_off
    expect = true

    assert_equal(expect, result)
  end

  def test_that_rocket_will_not_lift_off_when_flying
    skip
    # arrange
    @rocket[:flying] = true
    # act
    result = @rocket.lift_off
    expect = false

    assert_equal(expect, result)
  end



end
