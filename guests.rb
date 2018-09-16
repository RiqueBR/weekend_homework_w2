class Guest

attr_accessor :name, :wallet


def initialize(name, wallet)
@name = name
@wallet = wallet
end

def check_wallet
if  @wallet == wallet
   wallet
else
end
end

def reduce_guest_money(room)
@wallet -= room.fee

end

end
