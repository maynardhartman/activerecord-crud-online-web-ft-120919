# Replace the '__' in the below methods to to make the specs pass!
# Each '__' corresponds to a single line of code you will need to write.
# See the example below on the left and how it should look on the right.
# def make_a_new_movie_instance    # def make_a_new_movie_instance
#   movie = __                     #   movie = Movie.new
# end                              # end
 
def can_be_instantiated_and_then_saved
  movie = Movie.new()
  movie.title = "This is a title."
  movie.save
end

def can_be_created_with_a_hash_of_attributes
  # Initialize movie and then and save it
  movie = Movie.create(attributes)
    movie.save
    return(movie)
end

def can_be_created_in_a_block(*args)
  # If no arguments are passed, use default values:
  # title == "Home Alone"
  # release_date == 1990
  Movie.create(args) do |mov|
    if args.values.first[1] = nil
      mov.title = "Home Alone"
    end
    if args.values.first[2]= nil
      mov.release_date = 1990
    end
    binding.pry
    puts ""
    return(mov)
  end
end

def can_get_the_f
  irst_item_in_the_database
  m = Movie.first
end

def can_get_the_last_item_in_the_database
  m = Movie.last
end

def can_get_size_of_the_database
  Movie.size
end

def can_find_the_first_item_from_the_database_using_id
  Movie.find(1).first
end

def can_find_by_multiple_attributes
  # Search Values:
  # title == "Title"
  # release_date == 2000
  # director == "Me"
  movie = Movie.where("title = ? AND release_date = ? AND director = ?", 'Title', 2000, 'Me')
end

def can_find_using_where_clause_and_be_sorted
  # For this test return all movies released after 2002 and ordered by 
  # release date descending
  movies = Movie.find().order(:release_date, DESC)
end

def can_be_found_updated_and_saved
  # Updtate the title "Awesome Flick" to "Even Awesomer Flick", save it, then return it
    movie = Movie.create(title: "Awesome Flick") do |m|
    if m.title == 'Awesome Flick' 
      m.title = "Even Awesomer Flick"
      movie.save
      movie
    end 
  end
end

def can_update_using_update_method
  # Update movie title to "Wat, huh?"
  movie  = Movie.create(title: "Wat?")
    movie.title = "Wat, huh?"
    movie.save 
end

def can_update_multiple_items_at_once
  # Change title of all movies to "A Movie"
  5.times do |i|
   movie = Movie.create(title: "Movie_#{i}", release_date: 2000+i)
      movie.title = "A Movie_#{i}"
      movie.save
  end
end


def can_destroy_a_single_item
  Movie.new(title: "That One Where the Guy Kicks Another Guy Once")
end

def can_destroy_all_items_at_once
  10.times do |i|
    Movie.create(title: "Movie_#{i}")
  end
  Movie.destroy_all
end
