# frozen_string_literal: true

class Settlement
  # Subclass of settlement representing transfers between users. There should always be
  # two balancing Transaction records, and no external reference or value.
  class InternalTransfer < Settlement
  end
end
