#write your code here

def translate(words)
  words.split(' ').collect { |word|
    (
    if word.index(/[aeiou]/) == 0
      word += 'ay'
    elsif word.index('sch') == 0
      word = word[3..-1] + word[0..2] + 'ay'
    elsif word.include? 'qu'
      (word.index('qu') == 0) ?
          word = word[2..-1] + word[0..1] + 'ay' :
          word = word[word.index('qu')+2..-1] + word[0..word.index('qu')+1] + 'ay'
    else
      word = word[word.index(/[aeiou]/)..-1] + word[0..word.index(/[aeiou]/)-1] + 'ay'
    end)
  }.join(' ')
end
