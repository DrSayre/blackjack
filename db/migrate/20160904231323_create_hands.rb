class CreateHands < ActiveRecord::Migration[5.0]
  def change
    create_table :hands do |t|
      t.integer :player_value
      t.integer :dealer_card
      t.boolean :hard
      t.boolean :pair
      t.references :game, foreign_key: true
      t.string :action

      t.timestamps
    end
  end
end
