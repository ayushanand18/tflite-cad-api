
�qroot"_tf_keras_network*�p{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "sex"}, "name": "sex", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "fbs"}, "name": "fbs", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "age"}, "name": "age", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "trestbps"}, "name": "trestbps", "inbound_nodes": []}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "chol"}, "name": "chol", "inbound_nodes": []}, {"class_name": "IntegerLookup", "config": {"name": "integer_lookup_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int64", "invert": false, "max_tokens": 2, "num_oov_indices": 1, "oov_token": -1, "mask_token": null, "output_mode": "int", "pad_to_max_tokens": false, "vocabulary": null}, "name": "integer_lookup_1", "inbound_nodes": [[["sex", 0, 0, {}]]]}, {"class_name": "IntegerLookup", "config": {"name": "integer_lookup_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int64", "invert": false, "max_tokens": 2, "num_oov_indices": 1, "oov_token": -1, "mask_token": null, "output_mode": "int", "pad_to_max_tokens": false, "vocabulary": null}, "name": "integer_lookup_2", "inbound_nodes": [[["fbs", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": []}, "mean": null, "variance": null}, "name": "normalization_1", "inbound_nodes": [[["age", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": []}, "mean": null, "variance": null}, "name": "normalization_2", "inbound_nodes": [[["trestbps", 0, 0, {}]]]}, {"class_name": "Normalization", "config": {"name": "normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": []}, "mean": null, "variance": null}, "name": "normalization_3", "inbound_nodes": [[["chol", 0, 0, {}]]]}, {"class_name": "CategoryEncoding", "config": {"name": "category_encoding_1", "trainable": true, "dtype": "float32", "num_tokens": 2, "output_mode": "multi_hot", "sparse": false}, "name": "category_encoding_1", "inbound_nodes": [[["integer_lookup_1", 0, 0, {}]]]}, {"class_name": "CategoryEncoding", "config": {"name": "category_encoding_2", "trainable": true, "dtype": "float32", "num_tokens": 2, "output_mode": "multi_hot", "sparse": false}, "name": "category_encoding_2", "inbound_nodes": [[["integer_lookup_2", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["normalization_1", 0, 0, {}], ["normalization_2", 0, 0, {}], ["normalization_3", 0, 0, {}], ["category_encoding_1", 0, 0, {}], ["category_encoding_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["age", 0, 0], ["trestbps", 0, 0], ["chol", 0, 0], ["sex", 0, 0], ["fbs", 0, 0]], "output_layers": [["dense_1", 0, 0]]}, "shared_object_id": 20, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, {"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 1]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": [{"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}, {"class_name": "TensorShape", "items": [null, 1]}], "is_graph_network": true, "full_save_spec": {"class_name": "__tuple__", "items": [[[{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "float32", "age"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "float32", "trestbps"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "float32", "chol"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "sex"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "fbs"]}]], {}]}, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "float32", "age"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "float32", "trestbps"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "float32", "chol"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "sex"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int64", "fbs"]}], "keras_version": "2.6.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "sex"}, "name": "sex", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "fbs"}, "name": "fbs", "inbound_nodes": [], "shared_object_id": 1}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "age"}, "name": "age", "inbound_nodes": [], "shared_object_id": 2}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "trestbps"}, "name": "trestbps", "inbound_nodes": [], "shared_object_id": 3}, {"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "chol"}, "name": "chol", "inbound_nodes": [], "shared_object_id": 4}, {"class_name": "IntegerLookup", "config": {"name": "integer_lookup_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int64", "invert": false, "max_tokens": 2, "num_oov_indices": 1, "oov_token": -1, "mask_token": null, "output_mode": "int", "pad_to_max_tokens": false, "vocabulary": null, "has_input_vocabulary": false}, "name": "integer_lookup_1", "inbound_nodes": [[["sex", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "IntegerLookup", "config": {"name": "integer_lookup_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int64", "invert": false, "max_tokens": 2, "num_oov_indices": 1, "oov_token": -1, "mask_token": null, "output_mode": "int", "pad_to_max_tokens": false, "vocabulary": null, "has_input_vocabulary": false}, "name": "integer_lookup_2", "inbound_nodes": [[["fbs", 0, 0, {}]]], "shared_object_id": 6}, {"class_name": "Normalization", "config": {"name": "normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": []}, "mean": null, "variance": null}, "name": "normalization_1", "inbound_nodes": [[["age", 0, 0, {}]]], "shared_object_id": 7}, {"class_name": "Normalization", "config": {"name": "normalization_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": []}, "mean": null, "variance": null}, "name": "normalization_2", "inbound_nodes": [[["trestbps", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "Normalization", "config": {"name": "normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": []}, "mean": null, "variance": null}, "name": "normalization_3", "inbound_nodes": [[["chol", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "CategoryEncoding", "config": {"name": "category_encoding_1", "trainable": true, "dtype": "float32", "num_tokens": 2, "output_mode": "multi_hot", "sparse": false}, "name": "category_encoding_1", "inbound_nodes": [[["integer_lookup_1", 0, 0, {}]]], "shared_object_id": 10}, {"class_name": "CategoryEncoding", "config": {"name": "category_encoding_2", "trainable": true, "dtype": "float32", "num_tokens": 2, "output_mode": "multi_hot", "sparse": false}, "name": "category_encoding_2", "inbound_nodes": [[["integer_lookup_2", 0, 0, {}]]], "shared_object_id": 11}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [[["normalization_1", 0, 0, {}], ["normalization_2", 0, 0, {}], ["normalization_3", 0, 0, {}], ["category_encoding_1", 0, 0, {}], ["category_encoding_2", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 15}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["dense", 0, 0, {}]]], "shared_object_id": 16}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout", 0, 0, {}]]], "shared_object_id": 19}], "input_layers": [["age", 0, 0], ["trestbps", 0, 0], ["chol", 0, 0], ["sex", 0, 0], ["fbs", 0, 0]], "output_layers": [["dense_1", 0, 0]]}}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": true, "label_smoothing": 0, "axis": -1}, "shared_object_id": 26}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 27}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}2
�root.layer-0"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "sex", "dtype": "int64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "sex"}}2
�root.layer-1"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "fbs", "dtype": "int64", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "int64", "sparse": false, "ragged": false, "name": "fbs"}}2
�root.layer-2"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "age", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "age"}}2
�root.layer-3"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "trestbps", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "trestbps"}}2
�root.layer-4"_tf_keras_input_layer*�{"class_name": "InputLayer", "name": "chol", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "chol"}}2
�root.layer_with_weights-0"_tf_keras_layer*�{"name": "integer_lookup_1", "trainable": true, "expects_training_arg": false, "dtype": "int64", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "class_name": "IntegerLookup", "config": {"name": "integer_lookup_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int64", "invert": false, "max_tokens": 2, "num_oov_indices": 1, "oov_token": -1, "mask_token": null, "output_mode": "int", "pad_to_max_tokens": false, "vocabulary": null, "has_input_vocabulary": false}, "inbound_nodes": [[["sex", 0, 0, {}]]], "shared_object_id": 5}2
�root.layer_with_weights-1"_tf_keras_layer*�{"name": "integer_lookup_2", "trainable": true, "expects_training_arg": false, "dtype": "int64", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "class_name": "IntegerLookup", "config": {"name": "integer_lookup_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "int64", "invert": false, "max_tokens": 2, "num_oov_indices": 1, "oov_token": -1, "mask_token": null, "output_mode": "int", "pad_to_max_tokens": false, "vocabulary": null, "has_input_vocabulary": false}, "inbound_nodes": [[["fbs", 0, 0, {}]]], "shared_object_id": 6}2
�root.layer_with_weights-2"_tf_keras_layer*�{"name": "normalization_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "class_name": "Normalization", "config": {"name": "normalization_1", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": []}, "mean": null, "variance": null}, "inbound_nodes": [[["age", 0, 0, {}]]], "shared_object_id": 7, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}2
�	root.layer_with_weights-3"_tf_keras_layer*�{"name": "normalization_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "class_name": "Normalization", "config": {"name": "normalization_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": []}, "mean": null, "variance": null}, "inbound_nodes": [[["trestbps", 0, 0, {}]]], "shared_object_id": 8, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}2
�
root.layer_with_weights-4"_tf_keras_layer*�{"name": "normalization_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": true, "class_name": "Normalization", "config": {"name": "normalization_3", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "axis": {"class_name": "__tuple__", "items": []}, "mean": null, "variance": null}, "inbound_nodes": [[["chol", 0, 0, {}]]], "shared_object_id": 9, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1]}}2
�
�
�
�root.layer_with_weights-5"_tf_keras_layer*�{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 13}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 14}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["concatenate", 0, 0, {}]]], "shared_object_id": 15, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 7}}, "shared_object_id": 28}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 7]}}2
�
�root.layer_with_weights-6"_tf_keras_layer*�{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 17}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 18}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["dropout", 0, 0, {}]]], "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}2
�{root.keras_api.metrics.0"_tf_keras_metric*�{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 30}2
�|root.keras_api.metrics.1"_tf_keras_metric*�{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "binary_accuracy"}, "shared_object_id": 27}2