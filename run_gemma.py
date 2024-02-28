"""
Load 'config.json' from directory '/keras_7b/' to script
Load 'config.json' from directory '/keras_7b/' to script
Load 'model.weights.h5' from directory '/keras_7b/' to script
Load 'tokenizer.json' from directory '/keras_7b/' to script
Load 'assets/tokenizer/vocabulary.spm' from directory '/keras_7b/' to script
"""

from keras_nlp import load_model

config_path = '/keras_7b/config.json'
weights_path = '/keras_7b/model.weights.h5'
tokenizer_path = '/keras_7b/tokenizer.json'
vocabulary_path = '/keras_7b/assets/tokenizer/vocabulary.spm'

model = load_model(config_path, weights_path, tokenizer_path, vocabulary_path)
