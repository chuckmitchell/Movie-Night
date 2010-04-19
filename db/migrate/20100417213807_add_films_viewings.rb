class AddFilmsViewings < ActiveRecord::Migration
  def self.up
    create_table :films_viewings, :id=>false do |t|
      t.integer :film_id
      t.integer :viewing_id
    end
  end

  def self.down
    drop_table :films_viewings
  end
end
