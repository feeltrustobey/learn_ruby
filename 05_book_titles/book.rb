class Book
  attr_reader :title

  def title=(new_title)
    words = new_title.split(' ')
    @title = ([words[0].capitalize] +
        words[1..-1].collect { |word|
          little_words = %w{a an and the in of}
          if little_words.include? word
            word
          else
            word.capitalize
          end
        }).join(' ')
  end

end
