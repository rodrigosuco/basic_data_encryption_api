class CreateClients < ActiveRecord::Migration[7.1]
  def change
    create_table :clients do |t|
      t.string :user_document
      t.string :credit_card_token
      t.integer :value

      t.timestamps
    end
  end
end
