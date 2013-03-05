# Hash (because how else are you going to turn a hash into a hash)
hash = {a: 'alpha', b: 'beta', c: 'charlie'}
p hash.to_h

# ... also Struct
Foo = Struct.new(:bar, :baz)
struct = Foo.new('quux', 1)
p struct.to_h

# ... also OpenStruct
require 'ostruct'
ostruct = OpenStruct.new(foo: 'bar', baz: 1)
p ostruct.to_h

# ... there may be others too :)
