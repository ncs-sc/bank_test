class CreateSettlements < ActiveRecord::Migration[7.0]
  def change
    create_table :settlements, id: :uuid do |t|
      t.text :type
      t.text :external_reference
      t.integer :external_amount

      t.timestamps
    end
  end
end
