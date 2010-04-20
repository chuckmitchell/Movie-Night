class DisplayController < ApplicationController
  
  before_filter :prepare_request
  before_filter :prepare_invitation
  
  def index
    @showing_today = Viewing.find :first, :include=>[:films], :conditions=>["viewings.scheduled_at > ? and viewings.scheduled_at < ?", Time.now.at_midnight.in_time_zone, Time.now.tomorrow.at_midnight.in_time_zone ]
    @recent_viewings = Viewing.all :include=>[:films], :limit=>5, :conditions=>["viewings.scheduled_at < ?", Time.now.at_midnight.in_time_zone], :order=>["viewings.scheduled_at DESC"], :limit=>9
    @upcoming_viewings = Viewing.all :include=>[:films], :conditions=>["viewings.scheduled_at > ?", Time.now.tomorrow.at_midnight.in_time_zone], :order=>["viewings.scheduled_at ASC"]
  end


  private
  
  def prepare_request
    @request = Request.new
  end

  def prepare_invitation
    @invitation = Invitation.new
  end

end
