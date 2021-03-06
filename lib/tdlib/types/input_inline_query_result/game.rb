module TD::Types
  # Represents a game.
  #
  # @attr id [String] Unique identifier of the query result.
  # @attr game_short_name [String] Short name of the game.
  # @attr reply_markup [TD::Types::ReplyMarkup::InlineKeyboard, nil] Message reply markup.
  class InputInlineQueryResult::Game < InputInlineQueryResult
    attribute :id, TD::Types::String
    attribute :game_short_name, TD::Types::String
    attribute :reply_markup, TD::Types::ReplyMarkup
  end
end
