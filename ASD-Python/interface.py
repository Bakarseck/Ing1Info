from tkinter import *
import webbrowser

def open_graven_channel():
    webbrowser.open_new("http://youyube.com/gravenilvec")

# créer une première fenetre
window = Tk()

# convertir en ico pour ajouter un icone
# window.iconbitmap("logo.ico")

# personnaliser cette fenetre
window.title("My Application")
window.geometry("720x480")
window.minsize(480, 360)
window.config(background='#41B77F')

# Creer une frame
frame = Frame(window, bg='#41B77F', bd=1)

# Ajouter un premier texte
label_title = Label(
frame, text="Bienvenue sur l'application", font=("Courrier", 30), bg='#41B77F', fg="white")
label_title.pack(expand=YES)

#Ajouter un secon texte
label_subtitle = Label(frame, text="Bienvenue sur l'application", font=("Courrier", 25), bg='#41B77F', fg="white")
label_subtitle.pack(expand=YES)

# Ajouter un premier bouton
yt_button = Button(frame, text="Ouvrir Youtube", font=("Courrier", 25), bg='white', fg="#41B77F", command=open_graven_channel)
yt_button.pack(pady=25, fill=X)

# ajouter le frame
frame.pack(expand=YES)

# Afficher
window.mainloop()
