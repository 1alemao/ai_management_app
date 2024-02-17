from basic_cnn_service_pb2 import TrainingParameters
from basic_cnn_structure import BasicCNNStructure


class ModelTrainingController:
    def __init__(self):
        pass

    def train_model(self,
                    parameters: TrainingParameters,
                    basic_cnn_structure: BasicCNNStructure):
        basic_cnn_structure.compile_model()
        basic_cnn_structure.fit_model(epochs=parameters.epochs)