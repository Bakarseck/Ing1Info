from tkinter import *

# Créer une fenetre
window = Tk()

# Personnaliser
window.geometry("720x480")
window.title("Générateur de mot de passe")
window.config(background="#4065A4")

# Création d'image
width = 300
heigth = 300
image = PhotoImage(file="lakh.png").zoom(35).subsample(32)
canvas = Canvas(window, width=width, height=heigth, bg='#4065A4')
canvas.create_image(width/2, heigth/2, image=image)
canvas.pack(expand=YES)

# Afficher la fenetre
window.mainloop()