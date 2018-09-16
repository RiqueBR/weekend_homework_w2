require("minitest/autorun")
require("minitest/rg")
require_relative("../songs")

class SongTest < Minitest::Test
def setup
  @song1 = Song.new("I will Survive", "Gloria Gaynor")
  @song2 = Song.new("Livin' on a prayer", "Bon Jovi")
end


def test_get_a_song_title
@song1.title
end

def test_get_an_artist
  @song2.artist
end

end
