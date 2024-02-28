import logging
import tensorflow as tf
from tensorflow import keras
import keras_nlp
from keras import Sequential
from keras.layers import Flatten, Dense
import numpy as np
import os

os.environ["KERAS_BACKEND"] = "tensorflow"

DEFAULT_MODEL_PATH = "saved_models/default_model.keras"

class BasicCNNStructure:
    MODEL_IMG_WIDTH = 28
    MODEL_IMG_HEIGHT = 28
    MODEL_IMG_CHANNELS = 1
    
    def __init__(self):    
        # Initialize default model
        self._init_default_model()
        assert self._model is not None, "Could create or load default model"
        print(self._model.summary())

    def current_model(self) :
        return self._model

    def save_model_to_file(self):
        logging.info("Saving model to file: %s", DEFAULT_MODEL_PATH)
        assert self._model is not None, "Model is not loaded"
        try:
            self._model.save(DEFAULT_MODEL_PATH)
            logging.info("Model successfully saved!")
        except Exception as e:
            logging.warn("Unable to save model to file: %s", e)
        
    def load_model_from_file(self):
        logging.info("Loading model from file: %s", DEFAULT_MODEL_PATH)
        try:
            self._model = keras.models.load_model(DEFAULT_MODEL_PATH)
            logging.info("Model successfully loaded!")
        except Exception as e:
            logging.warn("Unable to load model from file: %s", e)
            self._model = None

    def _init_default_model(self):
        self._load_default_training_set()
        # self.load_model_from_file()
        self.load_gemma_7b_model()
        if self._model is None:
            self._create_default_model()
            self.compile_model()
            self.fit_model(epochs=20)
            self.save_model_to_file()
            
    # Loads a model
    def load_model(self, model: Sequential):
        self._model = model
        
    # Creates a default model for infering images base on the fashion_mnist dataset
    def _create_default_model(self):
        # The default model is sequential with the following layers:
        self._model = Sequential()
        # Input layer expects 28x28 images with 1 channel
        self._model.add(Flatten(
            input_shape=(BasicCNNStructure.MODEL_IMG_HEIGHT, 
                         BasicCNNStructure.MODEL_IMG_WIDTH)))
        self._model.add(Dense(units=200, activation=tf.nn.relu))
        self._model.add(Dense(units=100, activation=tf.nn.relu))
        # Output layer with 10 neurons/nodes
        self._model.add(Dense(10, activation=tf.nn.softmax))
        print("Created default model: ", self._model.summary())
    
    # Loads an image training set
    def load_training_set(self, 
                          training_images: np.ndarray, 
                          training_labels: np.ndarray, 
                          test_images: np.ndarray, 
                          test_labels: np.ndarray):
        self._training_images = training_images
        self._training_labels = training_labels
        self._test_images = test_images 
        self._test_labels = test_labels
        
    def _load_default_training_set(self):
        fashion_data = tf.keras.datasets.fashion_mnist
        # Tuple of NumPy arrays: (x_train, y_train), (x_test, y_test)
        (training_images, training_labels), (test_images, test_labels) = fashion_data.load_data()
        training_images = training_images / 255.0
        test_images = test_images / 255.0
        training_images_array = np.array(training_images)
        test_images_array = np.array(training_images)
        training_images_array = training_images_array.reshape(training_images_array.__len__(), 28, 28, 1)
        test_images_array = test_images_array.reshape(test_images_array.__len__(), 28, 28, 1)
        self._training_images = training_images
        self._training_labels = training_labels
        self._test_images = test_images 
        self._test_labels = test_labels
    
    # Compiles the model
    def compile_model(self):
        assert self._model is not None, "Model is not loaded"
        self._model.compile(optimizer=tf.keras.optimizers.Adam() ,
              loss=tf.keras.losses.SparseCategoricalCrossentropy(),
              metrics=['accuracy'])

    # Fits/trains the model
    def fit_model(self, epochs: int = 15):
        assert self._model is not None, "Model is not loaded"
        assert self._training_images is not None, "Training images are not loaded"
        assert self._training_labels is not None, "Training labels are not loaded"
        self._model.fit(self._training_images, 
                        self._training_labels, 
                        epochs=epochs)

    # Evaluates the model
    def evaluate_model(self):
        assert self._model is not None, "Model is not loaded"
        assert self._test_images is not None, "Test images are not loaded"
        assert self._test_labels is not None, "Test labels are not loaded"
        return self._model.evaluate(self._test_images, self._test_labels)

    # Predicts the value of the array using the pre-trained model
    def predict(self, 
                nd_array: np.ndarray):
        prediction_labels = {
        0: "T-shirt/top",
        1: "Trouser",
        2: "Pullover",
        3: "Dress",
        4: "Coat",
        5: "Sandal",
        6: "Shirt",
        7: "Sneaker",
        8: "Bag",
        9: "Ankle boot"
        }

        assert self._model is not None, "Model is not loaded"
        assert nd_array.shape == (BasicCNNStructure.MODEL_IMG_HEIGHT, 
                                  BasicCNNStructure.MODEL_IMG_WIDTH, 
                                  BasicCNNStructure.MODEL_IMG_CHANNELS), "Invalid array shape"
        
        # Prediction is a 10 element array with the probability of each label
        prediction = self._model.predict(nd_array.reshape(1, 
                                                         BasicCNNStructure.MODEL_IMG_HEIGHT, 
                                                         BasicCNNStructure.MODEL_IMG_WIDTH, 
                                                         BasicCNNStructure.MODEL_IMG_CHANNELS))
        
        highest_prob_index = np.argmax(prediction)
        
        highest_prob_value = prediction[0][highest_prob_index]
        
        return ("The provided image looks like a " +
                prediction_labels[np.argmax(prediction)] +
                " with a probability of " +
                str(highest_prob_value*100) +
                "%")
    
    def load_gemma_7b_model(self):
        logging.info("Loading gemma_7b model from file: gemma_7b/config.json")
        json_file = open("gemma_7b/config.json", "r")
        loaded_model_json = json_file.read()
        json_file.close()
        self._model = keras.models.model_from_json(loaded_model_json)
        print(self._model.summary())
        self._model.generate("What is the meaning of life?", max_length=64)