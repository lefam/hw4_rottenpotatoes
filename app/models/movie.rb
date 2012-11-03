class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end

  def self.with_same_director(id)
    @movie = Movie.find_by_id(id)
    if @movie and @movie.director then
      # happy path
      return Movie.find_all_by_director(@movie.director)
    end
    # sad path
    return nil
  end
end
