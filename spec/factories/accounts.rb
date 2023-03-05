# frozen_string_literal: true

FactoryBot.define do
  factory :account do
    name { 'MyText' }
    user_id { '' }
    balance { 1 }
  end
end
