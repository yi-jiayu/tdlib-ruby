module TD::Types
  # Represents a chat event.
  class ChatEventAction < Base
    %w[
      message_edited
      message_deleted
      message_pinned
      message_unpinned
      member_joined
      member_left
      member_invited
      member_promoted
      member_restricted
      title_changed
      description_changed
      username_changed
      photo_changed
      invites_toggled
      sign_messages_toggled
      sticker_set_changed
      is_all_history_available_toggled
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_event_action/#{type}"
    end
  end
end
