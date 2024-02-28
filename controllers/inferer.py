import sys

import io
from basic_cnn_structure import BasicCNNStructure
from basic_ai_infra_pb2 import Base64Image
import numpy as np
import tensorflow as tf
from PIL import Image, ImageOps

class InferController:
    def __init__(self):
        pass

    def infer_image(self, 
                    basic_cnn_structure: BasicCNNStructure,
                    base64_image: Base64Image):
        
        print("Atributes for base64_image: ", base64_image.__dict__)
        
        # Process the image
        processed_array = self.image_to_nd_array(base64_image)
        
        return basic_cnn_structure.predict(processed_array)
        
    def image_to_nd_array(self, base64_image: Base64Image) -> np.ndarray:
        
        # Open the image from the base64 string using PIL
        pil_image = Image.open(io.BytesIO(base64_image.data))
        
        # Resize the image to expected dimensions
        pil_image = pil_image.resize((BasicCNNStructure.MODEL_IMG_WIDTH, 
                                      BasicCNNStructure.MODEL_IMG_HEIGHT))

        # Convert the image to grayscale
        pil_image = pil_image.convert("L")
        
        pil_image = ImageOps.invert(pil_image)
        
        pil_image = ImageOps.mirror(pil_image)
        
        # pil_image.show()

        # Convert the bytes object to a numpy array
        input_arr = tf.keras.utils.img_to_array(pil_image)

        # Reshape the numpy array to match the image dimensions (height, width, channels)
        input_arr = input_arr.reshape((BasicCNNStructure.MODEL_IMG_HEIGHT, 
                                       BasicCNNStructure.MODEL_IMG_WIDTH, 
                                       BasicCNNStructure.MODEL_IMG_CHANNELS))
        
        # Normalize the image (0-255 to 0-1)
        image_array = input_arr / 255.0
        
        return image_array