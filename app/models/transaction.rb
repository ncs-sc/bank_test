# frozen_string_literal: true

# Data model for individual transaction.
class Transaction < ApplicationRecord
  belongs_to :account
  belongs_to :settlement
end
