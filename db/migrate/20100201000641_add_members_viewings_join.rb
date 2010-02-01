class AddMembersViewingsJoin < ActiveRecord::Migration
  def self.up
    create_table :members_viewings do |t|
      t.integer :member_id
      t.integer :viewing_id
    end
  end

  def self.down
    drop_table :members_viewers
  end
end
