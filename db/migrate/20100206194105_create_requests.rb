class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
      t.string :requester_name, nil=>false
      t.string :requester_email, :nil=>false
      t.string :title, :nil=>false
      t.string :link
      t.boolean :new, :default=>true

      t.timestamps
    end
  end

  def self.down
    drop_table :requests
  end
end
