class CreateCurrencies < ActiveRecord::Migration[5.0]
  def change
    create_table :currencies do |t|
      t.integer :data1
      t.integer :data2
      t.integer :data3
      t.integer :data4
      t.integer :data5
      t.integer :data6
      t.timestamps
    end
  end
end
