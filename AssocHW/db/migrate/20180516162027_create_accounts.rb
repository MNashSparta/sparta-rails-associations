class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.string :accountnumber
      t.string :status
      t.string :rank

      t.timestamps
    end
  end
end
