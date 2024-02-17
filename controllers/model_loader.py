from basic_cnn_structure import BasicCNNStructure
import tensorflow
from tensorflow import keras
from keras import Sequential
from keras.layers import Conv2D, MaxPooling2D, Flatten, Dense


class ModelLoadingController:
    def __init__(self):
        pass

    def load_default_model(self, basic_cnn_structure:BasicCNNStructure):        
        model = Sequential()
        # INPUT CONVOLUTIONAL LAYER => 28x28 = 784
        model.add(Conv2D(64, (3, 3), activation='relu', input_shape=(28, 28, 1)))
        # HIDDEN POOLING LAYER => 28x28 = 784
        model.add(MaxPooling2D(2,2))
        # HIDDEN CONVOLUTIONAL LAYER => 28x28 = 784
        model.add(Conv2D(64, (3, 3), activation='relu'))
        # HIDDEN POOLING LAYER => 28x28 = 784
        model.add(MaxPooling2D(2,2))
        # 
        model.add(Flatten())
        # HIDDEN LAYER => 1 layer with 128 neurons/nodes
        model.add(Dense(128, activation=tensorflow.nn.relu))
        # OUTPUT LAYER => 10 neurons/nodes
        model.add(Dense(10, activation=tensorflow.nn.softmax))
        
        basic_cnn_structure.load_model(model=model)