require("minitest/autorun")
require("minitest/rg")
require_relative("../rooms")
require_relative("../guests")

class RoomTest < Minitest::Test
def setup
  @guest1 = Guest.new("Enrique Iglesias", 40)
  @guest2 = Guest.new("Adele", 25)
  @guest3 = Guest.new("Nina Simone", 30)

group = []

  @room = Room.new("Pop", 12, group, 5)
end

def test_get_a_room__name
  @room.type
end

def test_get_a_room__capacity
  @room.capacity
end

def test_get_a_guest
  @guest1.name
end

def test_add_guest_to_the_room
  guest4 = Guest.new("David Lee Roth", 10)
  @room.add_guest(guest4)
  assert_equal(1, @room.check_guests)
end

def test_remove_guest_from_the_room
  guest4 = Guest.new("David Lee Roth", 10)
  @room.add_guest(guest4)
  @room.remove_guest(guest4)
  assert_equal(0, @room.check_guests)
end

def test_check_if_guest_can_enter_the_room
  guest4 = Guest.new("David Lee Roth", 10)
  @room.guest_poss_ent(guest4)
  assert_equal(1, @room.check_guests)
end



end
