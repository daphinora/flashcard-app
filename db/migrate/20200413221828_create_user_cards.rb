class CreateUserCards < ActiveRecord::Migration[6.0]
  def change
    create_table :user_cards do |t|
      t.integer :flashcard_id
      t.integer :user_id

      t.timestamps
    end
  end
end
