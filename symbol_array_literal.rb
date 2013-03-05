# symbol array literals ... nothing much to see here

# string array literal
p %w{this is an example}

# before this you could do ...
p %w{this is an example}.map(&:to_sym)

# now you can do ...
p %i{this is an example}
