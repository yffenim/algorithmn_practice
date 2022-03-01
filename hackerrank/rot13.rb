def rot13(secret_messages)
    words = secret_messages.split
    new = words.map do | w | 
        w.tr("abcdefghijklmnopqrstuvwxyz", "nopqrstuvwxyzabcdefghijklm")
    end
    new.join(" ")
end

p rot13("I am a secret")
p rot13("Why did the chicken cross the road?") == "Jul qvq gur puvpxra pebff gur ebnq?"
p rot13("Gb trg gb gur bgure fvqr!") == "To get to the other side!"
