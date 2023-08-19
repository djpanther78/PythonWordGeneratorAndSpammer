import nltk
import random

nltk.download('words')

from nltk.corpus import words

word_list = words.words()

# Nuber of words that will be generated
num_words = 10000

# Generated words
generated_words = random.sample(word_list, num_words)

# Filename
file_path = 'Wordlist.txt'

# Write the words to a .txt-file
with open(file_path, 'w') as file:
    for word in generated_words:
        file.write(word + '\n')

print(f"Generated words are saved on '{file_path}'.")