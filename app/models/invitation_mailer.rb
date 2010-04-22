class InvitationMailer < ActionMailer::Base
  

  def new(sent_at = Time.now)
    subject    'InvitationMailer#new'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def reminder(sent_at = Time.now)
    subject    'InvitationMailer#reminder'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

  def thankYou(sent_at = Time.now)
    subject    'InvitationMailer#thankYou'
    recipients ''
    from       ''
    sent_on    sent_at
    
    body       :greeting => 'Hi,'
  end

end
