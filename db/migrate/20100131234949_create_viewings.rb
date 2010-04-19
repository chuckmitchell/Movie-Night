class CreateViewings < ActiveRecord::Migration
  def self.up
    create_table :viewings do |t|
      t.string :title
      t.datetime :scheduled_at
      t.boolean :active, :default=>true

      t.timestamps
    end
  end

  def self.down
    drop_table :viewings
  end
end
