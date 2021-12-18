class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.references :category, null: false, foreign_key: true
      t.string     :article
      t.string     :de,       null: false
      t.string     :trxn      
      t.string     :pl
      t.string     :en,       null: false
      t.string     :ru,       null: false

      t.timestamps
    end
  end
end
