# frozen_string_literal: true

# New accounts table records ownership and current balance
class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts, id: :uuid do |t|
      t.text :name, null: false
      t.uuid :user_id, index: true, null: false
      t.integer :balance, null: false, default: 0

      t.timestamps
    end
  end
end
