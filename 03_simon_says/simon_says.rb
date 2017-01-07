#write your code here

def echo(phrase)
  return phrase
end

def shout(phrase)
  return phrase.upcase
end

def repeat(phrase, number = 2)
  (1..number).collect { phrase }.join(' ')
end

def start_of_word(word, number)
  word[0..number - 1]
end

def first_word(phrase)
  phrase.split(' ')[0]
end

def titleize(phrase)
  little_words = %w(the over in on a an and)
  phrase.capitalize.split(' ').collect! { |word|
    (not little_words.include?(word)) ? word.capitalize : word
  }.join(' ')
end
