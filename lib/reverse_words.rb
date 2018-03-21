require 'pry'

# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)

  if  my_words == nil || my_words.length < 2
    return my_words
  end

# Set up two variables at the start of the sentence

  i = 0
  j = 0

# advance variable j until it finds a space. then reverse the stuff i and j
# "Hello  world!"

  while j < my_words.length

    i = j

    while my_words[j] == " "
      i += 1
      j += 1
    end


    # binding.pry
    while my_words[j] != " " && my_words[j] != nil
      j += 1
    end


    reverse_word(my_words, i, j-1)

    unless j == my_words.length
      j += 1
    end

  end

  return my_words
end


def reverse_word(string, beginning, ending)

  i = beginning
  j = ending

  while j > i
    temp = string[i]
    string[i] = string[j]
    string[j] = temp
    i += 1
    j -= 1
  end
end

print reverse_words("Hello  world!")
