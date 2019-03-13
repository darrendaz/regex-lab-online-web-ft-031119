require 'pry'
def starts_with_a_vowel?(word)
  word.match(/\b[aeiouAEIOU]\w+/){|m|
    return true
  }
  word.match(/\b[^aeiouAEIOU]\w+/){|m|
    return false
  }
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/un\w+\ing/)
end

def words_five_letters_long(text)
  text.scan(/\b[a-zA-Z]{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  return text.match(/^[A-Z].+[,.!?]$/) ? true : false
end

def valid_phone_number?(phone)
  phone.match(/^\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$/) ? true : false
end
