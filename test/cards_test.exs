defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "create_deck creates 20 cards" do
    assert length(Cards.create_deck) === 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck
    assert deck !== Cards.shuffle(deck)
  end
end
