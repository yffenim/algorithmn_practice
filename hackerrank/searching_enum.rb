def func_any(hash)
    hash.keys.any? {|k| k.is_a? Integer} 
    # Check and return true if any key object within the hash is of the type Integer
    # If not found, return false.
end

def func_all(hash)
    hash.values.all? {|v| v.is_a?(Integer) && v < 10 }
    # Check and return true if all the values within the hash are Integers and are < 10
    # If not all values satisfy this, return false.
end

def func_none(hash)
    hash.values.none? {|v| v.nil?}
    # Check and return true if none of the values within the hash are nil
    # If any value contains nil, return false.
end

def func_find(hash)
    hash.find do | k,v |
        ( k.is_a?(Integer) && v.is_a?(Integer) && v < 20 ) ||
        ( k.is_a?(String) &&  v.is_a?(String) && v.chr == "a" )
    end
end
