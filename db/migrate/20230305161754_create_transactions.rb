# frozen_string_literal: true

# New transactions table records individual transactions in/out of accounts
class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions, id: :uuid do |t|
      t.text :description
      t.uuid :account_id
      t.integer :amount
      t.uuid :settlement_id

      t.timestamps
    end
  end
end
