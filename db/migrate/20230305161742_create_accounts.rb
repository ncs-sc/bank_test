# frozen_string_literal: true

# New accounts table records ownership and current balance
class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts, id: :uuid do |t|
      t.text :name
      t.uuid :user_id
      t.integer :balance

      t.timestamps
    end
  end
end
