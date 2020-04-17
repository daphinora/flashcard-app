class CreateCardCollections < ActiveRecord::Migration[6.0]
  def change
    create_table :card_collections do |t|
      t.integer :collection_id
      t.integer :flashcard_id

      t.timestamps
    end
  end
end
