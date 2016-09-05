class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.integer :decks
      t.boolean :dealer_hit_on_soft_17

      t.timestamps
    end
  end
end
