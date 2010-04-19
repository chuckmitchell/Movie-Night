class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.integer :film_id, :nil=>false
      t.string :requester_name, :nil=>false
      t.string :requester_email, :nil=>false
      t.string :imdb_permalink, :nil=>false
      t.boolean :new, :default=>true

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
