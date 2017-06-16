class CreateCurrencies < ActiveRecord::Migration[5.0]
  def change
    create_table :currencies do |t|
      t.integer :currency_data
      t.integer :currency_name
      t.integer :fBuyPri
      t.integer :mBuyPri
      t.integer :fSellPri
      t.integer :mSellPri
      t.timestamps
    end
  end
end
