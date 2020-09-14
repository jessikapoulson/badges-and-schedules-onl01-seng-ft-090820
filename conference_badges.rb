attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  greetings = []
  names.each do |name|
    greetings <<  badge_maker(name)
  end
  return greetings 
end

def assign_rooms(attendees)
  room=0
  attendees.collect do |name|
    room+=1
    "Hello, #{name}! You'll be assigned to room #{room}!"
  end
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end

  assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end