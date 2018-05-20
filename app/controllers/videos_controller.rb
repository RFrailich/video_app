class VideosController < ApplicationController
   extend SecureRandom


   def show
      @video = Video.find(params[:id])
      @videos = Video.all.where.not(:id => @video.id)
   end

   def new
   end

   def create
      @video = Video.new(vid_params)
      @video.save
   end

   def display_rand
      @video = Video.offset(rand(Video.count)).first
      redirect_to video_path(@video)
   end

   private
      def vid_params
         params.require(:genre)
      end

end
