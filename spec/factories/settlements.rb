# frozen_string_literal: true

FactoryBot.define do
  factory :settlement do
    type { 'MyText' }
    external_reference { 'MyText' }
    external_amount { 1 }
  end
end
