Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    # each returned element will be a hash whose key is the table header.
    Movie.create!(movie)
  end
end

Then /^the director of "(.*)" should be "(.*)"/ do |title, director|
  movie = Movie.find_by_title(title)
  movie.should_not == nil
  movie.director.should == director
end
