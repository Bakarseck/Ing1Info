from tkinter import *


def sqrt(n):
    res = 1
    if n > 0:
        for i in range(1, 10):
            res = n / i
            if n == res * res :
                break
        return res

# creer une fenetre
window = Tk()

# Personnaliser
window.title("Calculatrice")
window.geometry("720x480")
window.minsize(480, 360)
window.config(background='#41B77F')

# Ajouter un premier bouton
yt_button = Button(window, text="Calculer la racine de 9", font=("Courrier", 25), bg='white', fg="#41B77F", command=sqrt)
yt_button.pack(pady=25, fill=X)

# Afficher le résultat
label_subtitle = Label(window, text="Bienvenue sur l'application", font=("Courrier", 25), bg='#41B77F', fg="white")
label_subtitle.pack(expand=YES)


# Afficher
window.mainloop()