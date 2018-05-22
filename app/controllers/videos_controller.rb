class VideosController < ApplicationController
   extend SecureRandom
   layout "application"

   def index
      rand_vid = rand(Video.count)
      @video = Video.where.not(id: current_user.videos).offset(rand_vid).first
      if @video
        @video.users << current_user
        current_user.videos << @video
        @video.save
        current_user.save
        @videos = Video.where.not(id: @video.id).where(id: current_user.videos)
      else
       @videos = Video.all
      end
   end

   def new
   end

   def create
      @video = Video.new(vid_params)
      @video.save
   end


   private
      def vid_params
         params.require(:genre)
      end

end
