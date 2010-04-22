require 'test_helper'

class InvitationMailerTest < ActionMailer::TestCase
  test "new" do
    @expected.subject = 'InvitationMailer#new'
    @expected.body    = read_fixture('new')
    @expected.date    = Time.now

    assert_equal @expected.encoded, InvitationMailer.create_new(@expected.date).encoded
  end

  test "reminder" do
    @expected.subject = 'InvitationMailer#reminder'
    @expected.body    = read_fixture('reminder')
    @expected.date    = Time.now

    assert_equal @expected.encoded, InvitationMailer.create_reminder(@expected.date).encoded
  end

  test "thankYou" do
    @expected.subject = 'InvitationMailer#thankYou'
    @expected.body    = read_fixture('thankYou')
    @expected.date    = Time.now

    assert_equal @expected.encoded, InvitationMailer.create_thankYou(@expected.date).encoded
  end

end
