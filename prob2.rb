def welcome
    puts "Welcome to the Adventure Game! You have 0 points. Please choose a room to enter: 1 (room 1), 2 (room 2), or 3 (room 3)."
    puts "To exit, type 'Exit'."
end

def room_1
    puts "You have entered room 1 and picked up 5 points."
end

def room_2
    puts "You have entered room 2 and picked up 10 points."
end

def room_3
    puts "You have entered room 3 and picked up 15 points."
end

room = Integer(gets.chomp.to_i)
points = {room_1 => 5, room_2 => 10, room_3 => 15}

while room != 0
    case room
    when 1
        room_1
        puts "You have #{points} points."
    when 2
        room_2
        puts "You have #{points} points."
    when 3
        room_3
        puts "You have #{points} points."
    else
        puts "Wrong room number. Try again please."
        room = Integer(gets.chomp.to_i)
    end
    puts "Do you want to enter another room?"
    next_room = Integer(gets.chomp.to_i)
    if next_room == 0
         puts "Goodbye thanks for playing!You have #{points} points."
         exit
    end
end

puts "Congratulations! You have gained #{points} points."
