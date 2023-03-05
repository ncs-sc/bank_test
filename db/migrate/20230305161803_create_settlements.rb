# frozen_string_literal: true

# New settlements table tracks sources/sinks and can be used to reconcile transactions
class CreateSettlements < ActiveRecord::Migration[7.0]
  def change
    create_table :settlements, id: :uuid do |t|
      t.text :type, null: false
      t.text :external_reference, null: true
      t.integer :external_amount, null: false, default: 0

      t.timestamps
    end
  end
end
