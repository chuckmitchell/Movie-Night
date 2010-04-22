class InvitationMailer < ActionMailer::Base
  

  def reminder(sent_at = Time.now)
    subject    'InvitationMailer#reminder'
    recipients 'chuckmitchell@gmail.com'
    from       'noreply@movies.squall.ca'
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
