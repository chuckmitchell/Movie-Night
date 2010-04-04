class DisplayController < ApplicationController
  
  before_filter :prepare_request
  before_filter :prepare_invitation
  
  def index
    @showing_today = Viewing.find :first, :include=>[:film], :conditions=>["viewings.scheduled_at > ? and viewings.scheduled_at <= ?", Date.today.to_time, Date.tomorrow.to_time ]
    @recent_viewings = Viewing.all :include=>[:film], :limit=>5, :conditions=>["viewings.scheduled_at < ?", Date.today], :order=>["viewings.scheduled_at DESC"]
    @upcoming_viewings = Viewing.all :include=>[:film], :conditions=>["viewings.scheduled_at > ?", Date.today.to_time], :order=>["viewings.scheduled_at ASC"]
  end


  private
  
  def prepare_request
    @request = Request.new
  end

  def prepare_invitation
    @invitation = Invitation.new
  end

end