# frozen_string_literal: true

class Settlement
  # Subclass of settlement representing an initial joining promotion. This will have one
  # transaction plus a negative external amount.
  class JoiningPromotion < Settlement
  end
end
