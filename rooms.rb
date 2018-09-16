class Room

attr_accessor :type, :capacity, :group, :fee


def initialize(type, capacity, group, fee)
  @type = type
  @capacity = capacity
  @group = group
  @fee = fee
end

def check_guests
  @group.count
end


def add_guest(guest)
  @group << guest
end

def remove_guest(guest)
  @group.pop
end

def guest_poss_ent(guest)
  if check_guests < @capacity
    add_guest(guest)
  else
  end

end

end
