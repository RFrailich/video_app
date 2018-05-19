class Video < ApplicationRecord
   enum genre: {act:"Action", ad:"Adventure", an:"Animation", bio:"Biography", com:"Comedy", cri:"Crime",
           doc:"Documentary", dram:"Drama", fam:"Family", fan:"Fantasy", noir:"Film-Noir", game:"Game-Show",
           hist:"History", hor:"Horror", mus:"Music", musical:"Musical", mys:"Mystery", news:"News", 
           read:"Reality-TV", rom:"Romance", sci:"Sci-Fi", sport:"Sport", talk:"Talk-Show", thril:"Thriller",
           war:"War", west:"Western"}
end
