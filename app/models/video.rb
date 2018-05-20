class Video < ApplicationRecord
   enum genre: {Action:0, Adventure:0, Animation:0, Biography:0, Comedy:0, Crime:0,
           Documentary:0, Drama:0, Family:0, Fantasy:0, "Film-Noir":0, "Game-Show":0,
           History:0, Horror:0, Music:0, Musical:0, Mystery:0, News:0, "Reality-TV":0, 
           Romance:0, "Sci-Fi":0, Sport:0, "Talk-Show":0, Thriller:0, War:0, Western:0}

   before_create :gen_colour
   after_create :set_title
   
   def gen_colour
      self.colour = "#" + SecureRandom.hex(3)
   end


   def set_title
      self.title = "Video" + self.id.to_s
      self.save
   end

end
