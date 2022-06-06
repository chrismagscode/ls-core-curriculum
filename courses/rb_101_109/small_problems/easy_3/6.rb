# Exclusive Or

def xor?(value1, value2)
  !! ((value1 && !value2) || (value2 && !value1))
end

xor?(5.even?, 4.even?) == true
xor?(5.odd?, 4.odd?) == true
xor?(5.odd?, 4.even?) == false
xor?(5.even?, 4.odd?) == false

# light switch example

def three_way_switch(switch1, switch2)
  !! ((switch1 == 'up' && switch2 == 'down' || switch2 == 'up' && switch1 == 'down'))
end


p three_way_switch('up', 'up')