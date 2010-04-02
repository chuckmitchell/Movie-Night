class AddMembersViewingsJoin < ActiveRecord::Migration
  def self.up
    create_table :members_viewings, :id=>false do |t|
      t.integer :member_id, :null=>false
      t.integer :viewing_id, :null=>false
    end
  end

  def self.down
    drop_table :members_viewings
  end
end
