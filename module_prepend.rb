# module#prepend

module Thing
  def say
    "Goodbye world"
  end
end

class ThingUser
  include Thing
  # prepend Thing

  def say
    "Hello world"
  end
end

puts ThingUser.new.say
puts ThingUser.ancestors

