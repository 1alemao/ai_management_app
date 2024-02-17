from google.protobuf.internal import containers as _containers
from google.protobuf.internal import enum_type_wrapper as _enum_type_wrapper
from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Iterable as _Iterable, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class ProgressCode(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    PROGRESS_UNSPECIFIED: _ClassVar[ProgressCode]
    PROGRESS_RUNNING: _ClassVar[ProgressCode]
    PROGRESS_FINISHED_OK: _ClassVar[ProgressCode]
    PROGRESS_FINISHED_ERROR: _ClassVar[ProgressCode]

class DataType(int, metaclass=_enum_type_wrapper.EnumTypeWrapper):
    __slots__ = ()
    DATA_TYPE_UNSPECIFIED: _ClassVar[DataType]
    DATA_TYPE_FLOAT: _ClassVar[DataType]
    DATA_TYPE_INT: _ClassVar[DataType]
    DATA_TYPE_STRING: _ClassVar[DataType]
    DATA_TYPE_IMAGE: _ClassVar[DataType]
PROGRESS_UNSPECIFIED: ProgressCode
PROGRESS_RUNNING: ProgressCode
PROGRESS_FINISHED_OK: ProgressCode
PROGRESS_FINISHED_ERROR: ProgressCode
DATA_TYPE_UNSPECIFIED: DataType
DATA_TYPE_FLOAT: DataType
DATA_TYPE_INT: DataType
DATA_TYPE_STRING: DataType
DATA_TYPE_IMAGE: DataType

class SampleData(_message.Message):
    __slots__ = ("samples", "labels")
    SAMPLES_FIELD_NUMBER: _ClassVar[int]
    LABELS_FIELD_NUMBER: _ClassVar[int]
    samples: bytes
    labels: _containers.RepeatedScalarFieldContainer[int]
    def __init__(self, samples: _Optional[bytes] = ..., labels: _Optional[_Iterable[int]] = ...) -> None: ...

class ModelData(_message.Message):
    __slots__ = ("json_model",)
    JSON_MODEL_FIELD_NUMBER: _ClassVar[int]
    json_model: bytes
    def __init__(self, json_model: _Optional[bytes] = ...) -> None: ...

class LoadingParameters(_message.Message):
    __slots__ = ("optional_parameter",)
    OPTIONAL_PARAMETER_FIELD_NUMBER: _ClassVar[int]
    optional_parameter: str
    def __init__(self, optional_parameter: _Optional[str] = ...) -> None: ...

class LoadingSummary(_message.Message):
    __slots__ = ("result_code", "result_message", "elapsed_sec")
    RESULT_CODE_FIELD_NUMBER: _ClassVar[int]
    RESULT_MESSAGE_FIELD_NUMBER: _ClassVar[int]
    ELAPSED_SEC_FIELD_NUMBER: _ClassVar[int]
    result_code: ProgressCode
    result_message: str
    elapsed_sec: float
    def __init__(self, result_code: _Optional[_Union[ProgressCode, str]] = ..., result_message: _Optional[str] = ..., elapsed_sec: _Optional[float] = ...) -> None: ...

class TrainingParameters(_message.Message):
    __slots__ = ("epochs", "batch_size", "learning_rate")
    EPOCHS_FIELD_NUMBER: _ClassVar[int]
    BATCH_SIZE_FIELD_NUMBER: _ClassVar[int]
    LEARNING_RATE_FIELD_NUMBER: _ClassVar[int]
    epochs: int
    batch_size: int
    learning_rate: float
    def __init__(self, epochs: _Optional[int] = ..., batch_size: _Optional[int] = ..., learning_rate: _Optional[float] = ...) -> None: ...

class TrainingSummary(_message.Message):
    __slots__ = ("result_code", "result_message", "elapsed_nsec")
    RESULT_CODE_FIELD_NUMBER: _ClassVar[int]
    RESULT_MESSAGE_FIELD_NUMBER: _ClassVar[int]
    ELAPSED_NSEC_FIELD_NUMBER: _ClassVar[int]
    result_code: ProgressCode
    result_message: str
    elapsed_nsec: int
    def __init__(self, result_code: _Optional[_Union[ProgressCode, str]] = ..., result_message: _Optional[str] = ..., elapsed_nsec: _Optional[int] = ...) -> None: ...

class DataPoint(_message.Message):
    __slots__ = ("data", "type")
    DATA_FIELD_NUMBER: _ClassVar[int]
    TYPE_FIELD_NUMBER: _ClassVar[int]
    data: str
    type: DataType
    def __init__(self, data: _Optional[str] = ..., type: _Optional[_Union[DataType, str]] = ...) -> None: ...

class InferingResult(_message.Message):
    __slots__ = ("result",)
    RESULT_FIELD_NUMBER: _ClassVar[int]
    result: str
    def __init__(self, result: _Optional[str] = ...) -> None: ...

class Base64Image(_message.Message):
    __slots__ = ("data", "width", "height")
    DATA_FIELD_NUMBER: _ClassVar[int]
    WIDTH_FIELD_NUMBER: _ClassVar[int]
    HEIGHT_FIELD_NUMBER: _ClassVar[int]
    data: bytes
    width: int
    height: int
    def __init__(self, data: _Optional[bytes] = ..., width: _Optional[int] = ..., height: _Optional[int] = ...) -> None: ...
