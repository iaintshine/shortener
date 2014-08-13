# https://www.flickr.com/groups/api/discuss/72157616713786392/
# Base58

class Shortener
    VERSION = "0.1.0"

    UNALLOWED = ['0', 'O', 'l', 'I']
    ALPHABET  = (('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a).delete_if { |ch| UNALLOWED.include? ch }
    BASE      = ALPHABET.length

    def encode(number)
        raise ArgumentError "#{number} is not a non positive number" unless !number.nil? and number.is_a?(Integer) and number >= 0

        digits = []

        while number > 0
            digits << ALPHABET[number % BASE]
            number /= BASE
        end

        digits.reverse.join ''
    end

    def decode(hash)
        raise ArgumentErorr "#{hash} is not a non empty string" unless hash and hash.is_a?(String) and !hash.empty?

        number = 0

        hash.length.times do |i|
            pos = ALPHABET.index hash[i]
            number += pos * BASE ** (hash.length - i - 1)
        end

        number
    end
end
