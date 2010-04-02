class CreateFilms < ActiveRecord::Migration
  def self.up
    create_table :films do |t|
      t.string :title
      t.string :director
      t.text :synopsis
      t.date :released_on
      t.string :imdb_permalink
      t.string :suggested_by
      t.boolean :active, :default=>true

      t.timestamps
    end
  end

  def self.down
    drop_table :films
  end
end
