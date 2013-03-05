# KEYWORD ARGUMENTS!!11!!

puts

# where you used to do this
# def ugh_splody_hash(message, opts={})
#   defaults = {foo: 'bar', baz: 1}
#   options = defaults.merge(opts)
#
#   puts "#{message} #{options[:foo]} #{options[:baz]}"
# end

# message = 'gnnn!!'
# ugh_splody_hash(message)
# ugh_splody_hash(message, foo: 'hates', baz: 'splody mergin')

# you can now do this
def refreshingly_clean(message, foo: nil, baz: 1, **opts)
  puts "#{message} #{foo} #{baz}"
  p opts
end

message = 'wooo!!'
refreshingly_clean('hello')
refreshingly_clean(message,  baz: 'keyword args', teh: 'rhtir', foo: 'meh', quux: 'thing')

#
# NOTE: was going to be carried through to stdlib but not in this release
# i.e. 10.step by: 2, to: 10
