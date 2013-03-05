require_relative 'refinements_foo'
using Foo

class Test
  def ratio(a, b)
    a / b
  end
end

t = Test.new
puts t.ratio(6,8)
