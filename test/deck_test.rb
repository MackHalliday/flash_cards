require 'minitest/autorun'
require 'minitest/pride'
require './lib/turn'
require './lib/card'
require './lib/deck'
require 'pry'

class DeckTest < Minitest::Test

  def setup
    @card_1 = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @card_2 = Card.new("The Viking spacecraft sent back to Earth photographs and reports about the surface of which planet?", "Mars", :STEM)
    @card_3 = Card.new("Describe in words the exact direction that is 697.5° clockwise from due north?", "North north west", :STEM)

    @cards = [@card_1, @card_2, @card_3]

    @deck = Deck.new(@cards)

    @card_2_and_card_3 = [@card_2, @card_3]
end
  def test_it_exist

    assert_instance_of Deck, @deck
  end

  def test_deck_cards_attribute

    assert_equal @cards, @deck.cards
  end

  def test_deck_count_attribute

    assert_equal 3, @deck.count
  end

  def test_cards_in_category_stem

    assert_equal @card_2_and_card_3, @deck.cards_in_category(:STEM)
  end

  def test_cards_in_category_geography

    assert_equal [@card_1], @deck.cards_in_category(:Geography)
  end

  def test_cards_in_category_pop_culture

    assert_equal [], @deck.cards_in_category("Pop Culture")
  end

  #when make method, CREATE A TEST. 

end
