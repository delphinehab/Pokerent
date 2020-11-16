class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :description
      t.string :element
      t.integer :evolution_level
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
