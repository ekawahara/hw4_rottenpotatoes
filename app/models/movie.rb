class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.find_same_director(string)
    TmdbMovie.find(:director => string)
  end
end
