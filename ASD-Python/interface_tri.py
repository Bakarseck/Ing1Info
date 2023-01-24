from tkinter import *

# Define the Graphic User Interface
gui = Tk()

gui.geometry("500x500")
gui.title("Interface de tri")
gui.config(background="#41B77F")
gui.maxsize(500, 500)
gui.minsize(500, 500)


# Define a frame
frame = Frame(gui, background='#41B77F')


# Ajouter un texte
label_title = Label(
frame, text="Bienvenue sur l'application", font=("Courrier", 30), bg='#41B77F', fg="white")
# Le mettre sur l'écran
label_title.pack()


# Ajouter un boutton
yt_button = Button(frame, text="Triez votre liste", font=("Courrier", 25), bg='white', fg="#41B77F")
# padY : padding ; fill : remplissage
yt_button.pack(pady=25)

# Ajouter à l'écran
frame.pack()

# Execute the Graphical user Interface
gui.mainloop()