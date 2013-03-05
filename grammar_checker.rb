module IBeforeEUnlessAfterC
  def check(word)
    if word.match(/c(?=ie)|[^c](?=ei)/)
      raise "Breaks I before E except after C rule: #{word}"
    end
  end
end

module Exceptions
  EXCEPTIONS = %w(science weird)

  def check(word)
    return if EXCEPTIONS.include?(word.downcase)
    super
  end
end

class GrammarChecker
  include IBeforeEUnlessAfterC
  # prepend Exceptions

  def initialize(string)
    @string = string
  end

  def check_grammer
    @string.split.each {|word| check(word) }
    puts "Seems fine to me"
  rescue Exception => e
    p e.message
  end
end

gc = GrammarChecker.new("I received my Weird Science DVD.")
gc.check_grammer
