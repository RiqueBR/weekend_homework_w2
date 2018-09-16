require("minitest/autorun")
require("minitest/rg")
require_relative("../guests")
require_relative("../rooms")

class GuestTest < Minitest::Test
def setup

  @guest = Guest.new("Bob Marley", 50)

group1 = []
  @room1 = Room.new("Macarena", 7, group1, 5)

end

def test_get_a_guest_name
  @guest.name
end

def test_get_guests_money
  @guest.wallet
end

def test_reduce_money_from_wallet
  group1 = []
  room1 = Room.new("Macarena", 7, group1, 5)
  @guest.check_wallet
  @guest.reduce_guest_money(room1)
  assert_equal(45, @guest.check_wallet)
end

end
