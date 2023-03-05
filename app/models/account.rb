# frozen_string_literal: true

# Data model for an account with a balance.
class Account < ApplicationRecord
  belongs_to :user
  has_many :transactions
end
