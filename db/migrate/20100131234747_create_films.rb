class CreateFilms < ActiveRecord::Migration
  def self.up
    create_table :films do |t|
      t.integer :viewing_id
      t.string :title
      t.string :director
      t.text :synopsis
      t.date :released_on
      t.string :imdb_permalink
      t.string :suggested_by

      t.timestamps
    end
  end

  def self.down
    drop_table :films
  end
end
