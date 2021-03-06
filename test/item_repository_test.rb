require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/item'

class ItemRepositoryTest< MiniTest::Unit::TestCase
  attr_reader :ir

  def setup
    @ir = ItemRepository.new(Item)
  end

  def test_it_exists
    assert_kind_of ItemRepository, ir
  end

  def test_does_it_create_array_on_initialize
    assert_kind_of Array, ir.collection_array
  end

  def test_item_repository_does_return_array_of_item
    ir.collection_array.each { |item|  assert_kind_of Item, item }
  end
end
