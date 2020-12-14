require "pry"

def badge_maker names
    "Hello, my name is #{names}."
end


def batch_badge_creator names

    names.collect do |name|
        badge_maker(name)
    end
end

def assign_rooms names

    names.map.with_index do |name, room_number|
    "Hello, #{name}! You'll be assigned to room #{room_number + 1}!"
    end
end

def printer names
    batch_badge_creator(names).each do |badge|
        puts badge
    end

    assign_rooms(names).each do |room|
        puts room
    end


end

