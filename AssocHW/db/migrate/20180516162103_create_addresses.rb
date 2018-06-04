class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :firstline
      t.string :secondline
      t.string :country
      t.string :postcode

      t.timestamps
    end
  end
end
