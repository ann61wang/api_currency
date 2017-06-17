class AddDataIdToCurrencies < ActiveRecord::Migration[5.0]
  def change
  	add_column :currencies, :currency_id, :string
  end
end
