text = 'php ruby php java javascript go go go'
def get_words_count_by_lang(text)
  array = text.split(' ')
  array.tally
end
puts get_words_count_by_lang(text)
