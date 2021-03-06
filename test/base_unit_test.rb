require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/base_unit'

class BaseUnitTest < MiniTest::Unit::TestCase
  
  attr_reader :bu
  def setup
  #  data = {id: 1}
  #  @bu = BaseUnit.new(data)
  end

  def test_it_exists
    skip
    assert_kind_of BaseUnit, bu
  end

  def test_it_has_an_id
    skip
    assert_equal 1, bu.id
  end

  def test_it_has_created_instance_methods
    skip
    assert bu.methods.include?(:id)
  end

  def test_it_can_not_create_bad_instance_methods
    skip
    data = {id: 2, spam: "I'm spam"}
    bu2 = BaseUnit.new(data)
    refute bu2.methods.include?(:spam)
  end
  
end
