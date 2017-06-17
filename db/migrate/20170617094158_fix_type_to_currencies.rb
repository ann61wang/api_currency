class FixTypeToCurrencies < ActiveRecord::Migration[5.0]
  def change
  	change_column :currencies, :currency_name, :string
  end
end
