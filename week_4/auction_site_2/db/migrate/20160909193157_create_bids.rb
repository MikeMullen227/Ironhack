class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.decimal :amount
      t.integer :user_id
      t.string :user_email
      t.integer :product_id

      t.timestamps
    end
  end
end
