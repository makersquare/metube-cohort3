class ShowsController < ApplicationController
  
  def show_seinfeld
    @movie = {
      title: 'Seinfeld',
      video_id: 'm5OoR0Qjrlo'
    }
  end

  def show_friends
    @movie = {
      title: 'Friends',
      video_id: 'XIsVHF2bwVs'
    }
  end

end