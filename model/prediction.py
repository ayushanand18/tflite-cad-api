import tensorflow as tf
from tensorflow import keras

model = tf.keras.models.load_model('./model/cad_classifier')

def predict(age, sex, trestbps, chol, fbs):
    sample = {
        "age":	float(age),
        'sex': float(sex),
        'trestbps': float(trestbps),
        'chol': float(chol),
        'fbs': float(fbs),
    }
    input_dict = {name: tf.convert_to_tensor([value]) for name, value in sample.items()}
    predictions = model.predict(input_dict)
    return result(tf.nn.sigmoid(predictions[0]))

def result(data):
    if data[0]>0.5:
        return (True, data[0].numpy().tolist())
    else:
        return(False, 1-data[0].numpy().tolist())