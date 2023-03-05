# frozen_string_literal: true

# New transactions table records individual transactions in/out of accounts
class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions, id: :uuid do |t|
      t.text :description, null: false
      t.uuid :account_id, index: true, null: false
      t.integer :amount, null: false
      t.uuid :settlement_id, index: true, null: false

      t.timestamps
    end
  end
end
