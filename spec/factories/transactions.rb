FactoryBot.define do
  factory :transaction do
    description { "MyText" }
    account_id { "" }
    amount { 1 }
    settlement_id { "" }
  end
end
