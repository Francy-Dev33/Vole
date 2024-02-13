# Is chatbot Based keras 
> pip install keras

# Now show Snipett Py Implement Mini UI
```python 
import tkinter as tk
from tkinter import scrolledtext
from keras.models import load_model

model = load_model('your_model_path.h5')

def generate_response():
    input_text = user_input.get("1.0", tk.END)[:-1]
        user_input.delete("1.0", tk.END)

	    response = "Placeholder response from the chatbot"

	        chat_history.config(state=tk.NORMAL)
		    chat_history.insert(tk.END, "You: " + input_text + "\n")
		        chat_history.insert(tk.END, "AI: " + response + "\n\n")
			    chat_history.config(state=tk.DISABLED)
			        chat_history.see(tk.END)

				root = tk.Tk()
				root.title("AI Conversational Interface")
				chat_history = scrolledtext.ScrolledText(root, state=tk.DISABLED, width=60, height=20, wrap=tk.WORD)
				chat_history.grid(row=0, column=0, padx=10, pady=10, sticky="nsew")

				user_input = tk.Text(root, height=3)
				user_input.grid(row=1, column=0, padx=10, pady=10, sticky="ew")

				send_button = tk.Button(root, text="Send", command=generate_response)
				send_button.grid(row=1, column=1, padx=10, pady=10, sticky="e")

				root.rowconfigure(0, weight=1)
				root.columnconfigure(0, weight=1)

				root.mainloop()
```
# warning Not model create now show code save Model Personal 

```python
from keras.models import Sequential
from keras.layers import Dense
from keras.models import load_model

model = Sequential()
model.add(Dense(64, input_dim=10, activation='relu'))
model.add(Dense(32, activation='relu'))
model.add(Dense(1, activation='sigmoid'))
model.compile(optimizer='adam', loss='binary_crossentropy', metrics=['accuracy'])
import numpy as np
X_train = np.random.random((1000, 10))
y_train = np.random.randint(2, size=(1000, 1))
model.fit(X_train, y_train, epochs=10, batch_size=32)
model.save('your_model_path.h5')

