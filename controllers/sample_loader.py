import tensorflow as tf
from basic_cnn_structure import BasicCNNStructure


class SampleLoadingController:
    def __init__(self):
        pass

    def load_sample_into_structure(self, basic_cnn_structure: BasicCNNStructure):
        (training_images, training_labels), (test_images, test_labels) = tf.keras.datasets.fashion_mnist.load_data()
        basic_cnn_structure.load_training_set(training_images=training_images,
                                              training_labels=training_labels, 
                                              test_images=test_images, 
                                              test_labels=test_labels)
        