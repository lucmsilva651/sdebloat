import random
import tkinter as tk
from tkinter import messagebox
import pygame
root = tk.Tk()
root.title("blackholesun")
root.minsize(250, 50)
root.resizable(False, False)
pygame.init()
pygame.mixer.music.load('space_debris.mod')
pygame.mixer.music.play(-1)


def generate_key():
    key = str(random.randint(0, 999)).zfill(3) + '-' + str(random.randint(0, 999)).zfill(3)
    messagebox.showinfo("Key Generator", f"Your key is: {key}")


label = tk.Label(root, text="Click the button to generate a key")
label.pack(pady=10)

button = tk.Button(root, text="Generate Key", command=generate_key)
button.pack(pady=10)

root.mainloop()
