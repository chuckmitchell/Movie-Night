class CreateInvitations < ActiveRecord::Migration
  def self.up
    create_table :invitations do |t|
      t.string :sender_email
      t.string :invitee_email
      t.text :message
      t.datetime :sent_at

      t.timestamps
    end
  end

  def self.down
    drop_table :invitations
  end
end
