class AssertionError < RuntimeError
end

def assert &block
  raise AssertionError unless yield
end

def rot13(secret_messages)
    secret_messages.split.map { |w| w.tr('A-Za-z','N-ZA-Mn-za-m') }.join(" ")
end


assert { rot13("Why did the chicken cross the road?") == "Jul qvq gur puvpxra pebff gur ebnq?" }
assert { rot13("Gb trg gb gur bgure fvqr!") == "To get to the other side!" }
# assert { rot13("raise error") == "raise error" }

