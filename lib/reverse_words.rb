require 'pry'

def reverse_words(my_words)

  if  my_words == nil || my_words.length < 2
    return my_words
  end

  i = 0
  j = 0

  while j < my_words.length

    i = j

    while my_words[j] == " "
      i += 1
      j += 1
    end

    while my_words[j] != " " && my_words[j] != nil
      j += 1
    end

    reverse_word(my_words, i, j-1)

    j += 1
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
