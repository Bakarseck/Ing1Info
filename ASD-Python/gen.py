from tkinter import *
import string
from random import randint, choice

def generate_password():
    password_min = 8
    password_max = 14
    all_chars = string.ascii_letters + string.punctuation + string.digits
    password = "".join(choice(all_chars) for x in range(randint(password_min, password_max)))
    password_entry.delete(0, END)
    password_entry.insert(0, password)

# Créer une fenetre
window = Tk()

# Personnaliser
window.geometry("720x480")
window.title("Générateur de mot de passe")
window.config(background="#4065A4")

# creer la frame principale
frame = Frame(window, bg='#4065A4')

# # creer une image
# width = 300
# height = 300
# image = PhotoImage(file="lakh.png").zoom(35).subsample(32)
# canvas = Canvas(frame, width=width, height=height, bg="#4065A4", bd=0, highlightthickness=0)
# canvas.create_image(width/2, height/2, image=image)
# canvas.pack(expand=YES)


# creer un titre
label_title = Label(frame, text="Mot de Passe", font=("Helvetica", 20), bg="#4065A4", fg='white')
label_title.pack()

# creer un champ/entrée/input
password_entry = Entry(frame, font=("Helvetica", 20), bg="#4065A4", fg='white')
label_title.pack()
password_entry.pack()

# creer un bouton
buton_gen = Button(frame, text="Génerer un mot de passe", font=("Helvetica", 20), bg="white", fg='#4065A4', command=generate_password)
buton_gen.pack(pady=25)

# creation d'une barre de menu
menu_bar = Menu(window)

# Créer un premier menu
file_menu = Menu(menu_bar, tearoff=0)
file_menu.add_command(label="Nouveau", command=generate_password)
file_menu.add_command(label="Quitter", command=window.quit)
menu_bar.add_cascade(label="Fichier", menu=file_menu)

# 

frame.pack(expand=YES)
# Afficher la fenetre
window.mainloop()