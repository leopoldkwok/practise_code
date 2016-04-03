module AcceptsComments # Named AcceptsComments because its methods allow an object to accept comments

	def comments
		@comments ||= [] # assigns a new value to @comments, but only if @comments is nil. Same functionality as above
	end

	def add_comment(comment)
		comments << comment # Call the "comments" method to get the array in "@comments" and append a comment to it
	end
end

# def comments # Replaces both the attr_reader and the "initialize" method
	# 	if @comments # If @comments is already set
	# 		@comments # return that value
	# 	else
	# 		@comments = [] # If it's not already set, assign an empty array and return that array.
	# 	end
	# end

class Clip

	def play
		puts "Playing #{object_id}..." # Show the ID of the object we're playing
	end
end

# attr_reader :comments # Define a method to return the value of the @comments instance variab;e

	# def initialize
	# 	@comments = [] # when a new instance is created, set up an empty array to add comments to
	# end

	# def add_comment(comment)
	# 	comments << comment # Call the "comments" method to get the array in "@comments" and append a comment to it
	# end

class Video < Clip
	include AcceptsComments # Mix in all methods from the AcceptsComments module
	attr_accessor :resolution
end

class Song < Clip
	include AcceptsComments # Mix in all methods from the AcceptsComments module
	attr_accessor :beats_per_minute
end

class Photo
	include AcceptsComments # Mix in the "comments" and "add_comment" methods from the AcceptsComments Module
	def initialize # overrides "initialize" in the mixing, so it never runs!
		@format = 'JPEG'
	end

	# def show
	# 	puts "Displaying #{object_id}..."
	# end
end

video = Video.new # Set up a new Video object
video.add_comment("Cool slow motion effect!") # Add comments to it
video.add_comment("Weird ending.")
song = Song.new # Set up a new Song object
song.add_comment("Awesome beat.") # Add a comment to it
photo = Photo.new
photo.add_comment("Beautiful colors.")

p video.comments, song.comments, photo.comments # Inspect all comments

# p photo.comments

# photo.show


