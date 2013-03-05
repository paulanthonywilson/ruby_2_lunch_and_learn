module Foo
  refine Fixnum do
    def /(other)
      self.to_f / other
    end
  end
end

