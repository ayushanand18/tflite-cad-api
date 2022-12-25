def process(query):
    # write pre-processing code here
    return predict(query)

def predict(things):
    interpreter = tf.lite.Interpreter(model_path = ".tflite")
    interpreter.allocate_tensors()
    
    # get the input and output details
    input_details = interpreter.get_input_details()
    output_details = interpreter.get_output_details()
    
    # set the input data
    input_shape = input_details[0]['shape']
    input_data = data
    interpreter.set_tensor(input_details[0]['index'], input_data)

    # predict
    interpreter.invoke()

    # print the output
    output_data = interpreter.get_tensor(output_details[0]['index'])
    print(result(output_data))

def result(data):
    if data[0]>0.5:
        return (True, data[0])
    else:
        return(False, 1-data[0])