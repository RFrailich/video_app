class Video < ActiveRecord::Base
   enum genre: [ :Action, :Adventure, :Animation, :Biography, :Comedy, :Crime,
           :Documentary, :Drama, :Family, :Fantasy, :'Film-Noir', :'Game-Show',
           :History, :Horror, :Music, :Musical, :Mystery, :News, :'Reality-TV',
           :Romance, :'Sci-Fi', :Sport, :'Talk-Show', :Thriller, :War, :Western ]

   before_create :gen_colour
   after_create :set_title
   
   has_and_belongs_to_many :users
   
   def gen_colour
      self.colour = "#" + SecureRandom.hex(3)
   end


   def set_title
      self.title = "Video" + self.id.to_s
      self.save
   end

   validates_uniqueness_of :colour

end