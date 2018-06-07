module MoviesHelper
  def image_with_size(size, path)
    "http://image.tmdb.org/t/p/w#{size}#{path}"
  end
end