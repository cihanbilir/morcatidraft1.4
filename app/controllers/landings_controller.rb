class LandingsController < ApplicationController
  def index
    if !user_signed_in?
      redirect_to new_user_session_url and return
    else 
      @basvurans = Basvuran.all.order("id desc")
      session.delete(:basvuran_id)
    end
  end
end
