class CreateTaggedCards < ActiveRecord::Migration[6.0]
  def change
    create_table :tagged_cards do |t|
      t.integer :tag_id
      t.integer :flashcard_id

      t.timestamps
    end
  end
end
