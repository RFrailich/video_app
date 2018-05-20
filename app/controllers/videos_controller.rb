class VideosController < ApplicationController
   extend SecureRandom


   def show
      @video = Video.find(params[:id])
   end

   def index
      @videos = Video.all
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
