class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.find_same_director(id)
    given_movie = Movie.find_by_id(id)
    #check
    if given_movie == nil
      return nil
    end
    
    given_director = given_movie.director
    if given_director == nil or given_director == ''
      return nil
    end    
    return Movie.find_all_by_director(given_director)	
    
  end
end
