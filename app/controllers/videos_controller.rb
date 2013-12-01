class VideosController < ApplicationController
  
  def show_gladiator
    @movie = {
      title: 'Gladiator',
      subtitle: "Gladiator 'Are You Not Entertained' Scene",
      video_id: 'FI1ylg4GKv8',
      description: "Crowe shows everyone what's up."
    }
  end

  def show_matilda
    @movie = {
      title: 'Matilda',
      subtitle: "Big kid eating a brownie",
      video_id: 'EVWOQwZENBg',
      description: "Quite the random movie, but a classic for sure!"
    }
    
  end

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