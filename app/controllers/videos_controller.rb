class VideosController < ApplicationController
  
  def show_all
    
  end

  def show
    # Below is some code that should help you get started.
    # Feel free to write the code any which way you please.
    video_name = params["video_name"]
    videos = {
      "gladiator" => {
        title: 'Gladiator',
        video_id: 'FI1ylg4GKv8',
        description: "Crowe shows everyone what's up."
      },
      "matilda" => {
        title: 'Matilda',
        video_id: 'EVWOQwZENBg',
        description: "Quite the random movie, but a classic for sure!"
      },
      "seinfeld" => {
        title: 'Seinfeld',
        video_id: 'm5OoR0Qjrlo',
        description: 'A great description on where socks really go'
      },
      "friends" => {
        title: 'Friends',
        video_id: 'XIsVHF2bwVs',
        description: 'Gotta love friends!'
      }
    }

    @video = videos[video_name]
  end

  def show_two
    videos = {
      "gladiator" => {
        title: 'Gladiator',
        video_id: 'FI1ylg4GKv8',
        description: "Crowe shows everyone what's up."
      },
      "matilda" => {
        title: 'Matilda',
        video_id: 'EVWOQwZENBg',
        description: "Quite the random movie, but a classic for sure!"
      },
      "seinfeld" => {
        title: 'Seinfeld',
        video_id: 'm5OoR0Qjrlo',
        description: 'A great description on where socks really go'
      },
      "friends" => {
        title: 'Friends',
        video_id: 'XIsVHF2bwVs',
        description: 'Gotta love friends!'
      }
    }

    video_one_name = params["insert here"]
    video_two_name = params["insert here"]


    @video_one = "insert here"
    @video_two = "insert here"
  end



end