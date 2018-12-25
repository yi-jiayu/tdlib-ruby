module TD::Types
  # Represents a local file.
  #
  # @attr path [String, nil] Local path to the locally available file part; may be empty.
  # @attr can_be_downloaded [Boolean] True, if it is possible to try to download or generate the file.
  # @attr can_be_deleted [Boolean] True, if the file can be deleted.
  # @attr is_downloading_active [Boolean] True, if the file is currently being downloaded (or a local copy is being
  #   generated by some other means).
  # @attr is_downloading_completed [Boolean] True, if the local copy is fully available.
  # @attr downloaded_prefix_size [Integer] If is_downloading_completed is false, then only some prefix of the file is
  #   ready to be read.
  #   downloaded_prefix_size is the size of that prefix.
  # @attr downloaded_size [Integer] Total downloaded file bytes.
  #   Should be used only for calculating download progress.
  #   The actual file size may be bigger, and some parts of it may contain garbage.
  class LocalFile < Base
    attribute :path, TD::Types::String.optional.default(nil)
    attribute :can_be_downloaded, TD::Types::Bool
    attribute :can_be_deleted, TD::Types::Bool
    attribute :is_downloading_active, TD::Types::Bool
    attribute :is_downloading_completed, TD::Types::Bool
    attribute :downloaded_prefix_size, TD::Types::Integer
    attribute :downloaded_size, TD::Types::Integer
  end
end
