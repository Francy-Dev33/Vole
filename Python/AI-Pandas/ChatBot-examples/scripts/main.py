
m keras.models import Model
from keras.layers import Input, LSTM, Dense

def create_MDRT_chatbot(input_sequence_length, output_sequence_length, input_vocab_size, output_vocab_size):
    encoder_inputs = Input(shape=(input_sequence_length, input_vocab_size))
        encoder_lstm = LSTM(256, return_state=True)
	    _, encoder_state_h, encoder_state_c = encoder_lstm(encoder_inputs)
	        encoder_states = [encoder_state_h, encoder_state_c]

		    decoder_inputs = Input(shape=(output_sequence_length, output_vocab_size))
		        decoder_lstm = LSTM(256, return_sequences=True, return_state=True)
			    decoder_outputs, _, _ = decoder_lstm(decoder_inputs, initial_state=encoder_states)

			        decoder_dense = Dense(output_vocab_size, activation='softmax')
				    decoder_outputs = decoder_dense(decoder_outputs)

				        model = Model([encoder_inputs, decoder_inputs], decoder_outputs, name='MDRT_chatbot')

					    return model

					    input_sequence_length = 20
					    output_sequence_length = 20
					    input_vocab_size = 10000
					    output_vocab_size = 10000

					    MDRT_chatbot_model = create_MDRT_chatbot(input_sequence_length, output_sequence_length, input_vocab_size, output_vocab_size)

					    MDRT_chatbot_model.compile(optimizer='rmsprop', loss='categorical_crossentropy', metrics=['accuracy'])

					    MDRT_chatbot_model.summary()
