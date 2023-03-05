# frozen_string_literal: true

# Data model for a settlement. A settlement describes a financial change that results in changes to
# account balances. This is an abstract base class, all settlements are classified into types depending
# on how they tie together internal and potentially external records.
class Settlement < ApplicationRecord
  has_many :transactions
end
