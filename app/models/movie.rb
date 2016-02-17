class Movie < ActiveRecord::Base
    def self.get_ratings #iterate through database and collect unique rating values, returns to controller method index
       r=[]
       movies = Movie.all
       movies.each do |movie|
           if !r.include? movie[:rating]
               r.push(movie[:rating])
           end
       end
       r
    end
    
    def self.get_rated_movies # gets all the movies that are rated 
        
    end
end
