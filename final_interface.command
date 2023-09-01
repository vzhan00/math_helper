#!/usr/bin/env python3
# final_interface.py
'''user interface for final project: Math Helper'''
__author__ = "Sion"
__version__ = "1.0"

import math_problems as mp
import tkinter
from tkinter import *
from tkinter.font import Font
from PIL import Image, ImageTk


root = tkinter.Tk()


root.title("MATH HELPER")
root.geometry("1000x600")


OPTIONS = [
    "Choose Category:",
    "basic math skills",
    "polynomials",
    "functions",
    "trig special angles",
    "logarithms",
    "limits"
]


def quitting_time():
    '''quits'''
    root.destroy()


def show_instructions(event):
    '''shows instructions'''

    global menu_var, results_display, i

    i = -1
    selection = menu_var.get()  # get which item was selected
    # set instructions text for the item selected:

    if selection == "basic math skills":
        instructions = "Welcome to basic math skills! \n \n" + \
            "This options consists of problems focusing on addition, subtraction, \n" + \
            "multiplication, division, and exponents. Click the question button for problems."

    elif selection == "polynomials":
        instructions = "Welcome to polynomials! \n \n This option consists of problems \n" + \
            "focusing on polynomials. Click the question button for problems."

    elif selection == "functions":
        instructions = "welcome to functions! \n \n This option consists of problems " + \
            "focusing on functions. Click the question button for problems."

    elif selection == "trig special angles":
        instructions = "Welcome to trig special angles! \n \n This options consists of " + \
            "problems focusing on trig special angles. Click the question button for problems."

    elif selection == "logarithms":
        instructions = "Welcome to logs! \n \n This options consists of problems focusing " + \
            "on logarithms. Click the question button for problems."

    elif selection == "limits":
        instructions = "Welcome to limits! \n \n This options consists of problems " + \
            "focusing on limits. Click the question button for problems."

    else:
        instructions = "Nothing selected yet"

    results_display.configure(state="normal")
    results_display.delete(1.0, tkinter.END)
    # show results in text area
    results_display.insert(tkinter.END, instructions)
    results_display.configure(state="disabled")


i = -1


def submit():
    '''submit button'''

    global menu_var, results_display, entry_1, entry_2, entry_3
    global entry_4, input_area, results_label, display_text, i, selection
    # gets values as strings from the entry boxes
    #arg_1 = entry_1.get()

    large_text = input_area.get("1.0", tkinter.END)
    large_text = large_text.strip()
    return_text = ""
    selection = menu_var.get()
    i += 1
    # print(i)

    if selection == "basic math skills" and i <= len(mp.basic_math_problems) - 1:
        math_problem = mp.basic_math_problems[i]
        display_text = str(math_problem)

    elif selection == "polynomials" and i <= len(mp.polynomial_questions) - 1:
        poly_problem = mp.polynomial_questions[i]
        display_text = str(poly_problem)

    elif selection == "functions" and i <= len(mp.function_questions) - 1:
        func_problem = mp.function_questions[i]
        display_text = str(func_problem)

    elif selection == "trig special angles" and i <= len(mp.trig_problems) - 1:
        trig_problems = mp.trig_problems[i]
        display_text = str(trig_problems)

    elif selection == "logarithms" and i <= len(mp.log_problems) - 1:
        log_problem = mp.log_problems[i]
        display_text = str(log_problem)

    elif selection == "limits" and i <= len(mp.limit_problems) - 1:
        limit_problem = mp.limit_problems[i]
        display_text = str(limit_problem)

    else:
        display_text = "No more questions :("

    # shows something in the label:
    results_label.config(
        text="Results of calling function: " + selection.upper())

    # deletes old text and insert results text into the large text area:
    results_display.configure(state="normal")  # allow editing of text
    results_display.delete(1.0, tkinter.END)
    # show results in text area
    results_display.insert(tkinter.END, display_text)
    results_display.configure(state="disabled")  # prevent editing of text


def check_answer():
    global check, i

    user_answer = entry_3.get()

    if selection == "basic math skills":
        if mp.basic_math_answers[i] == str(user_answer):
            input_area.tag_config("start", foreground="green")
            check = "CORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check, "start")

            photo2 = ImageTk.PhotoImage(file='download2.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo2)

        else:
            input_area.tag_config("start", foreground="red")
            check = "INCORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check, "start")
            photo3 = ImageTk.PhotoImage(file='download3.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo3)

        input_area.insert(
            tkinter.END, check)

        delete()

    elif selection == "polynomials":
        if mp.polynomial_answers[i] == str(user_answer):
            input_area.tag_config("start", foreground="green")
            check = "CORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check, "start")
            photo2 = ImageTk.PhotoImage(file='download2.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo2)

        else:
            input_area.tag_config("start", foreground="red")
            check = "INCORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check, "start")
            photo3 = ImageTk.PhotoImage(file='download3.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo3)

        input_area.insert(
            tkinter.END, check)

        delete()

    elif selection == "functions":
        if mp.function_answers[i] == str(user_answer):
            input_area.tag_config("start", foreground="green")
            check = "CORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check, "start")
            photo2 = ImageTk.PhotoImage(file='download2.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo2)

        else:
            input_area.tag_config("start", foreground="red")
            check = "INCORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check, "start")
            photo3 = ImageTk.PhotoImage(file='download3.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo3)

        input_area.insert(
            tkinter.END, check)

        delete()

    elif selection == "trig special angles":
        if mp.trig_answers[i] == str(user_answer):
            input_area.tag_config("start", foreground="green")
            check = "CORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check, "start")
            photo2 = ImageTk.PhotoImage(file='download2.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo2)

        else:
            input_area.tag_config("start", foreground="red")
            check = "INCORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check, "start")
            photo3 = ImageTk.PhotoImage(file='download3.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo3)

        delete()

    elif selection == "logarithms":
        if mp.log_answers[i] == str(user_answer):
            input_area.tag_config("start", foreground="green")
            check = "CORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check, "start")
            photo2 = ImageTk.PhotoImage(file='download2.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo2)

        else:
            input_area.tag_config("start", foreground="red")
            check = "INCORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check, "start")
            photo3 = ImageTk.PhotoImage(file='download3.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo3)

        input_area.insert(
            tkinter.END, check)

        delete()

    elif selection == "limits":
        if mp.limit_answers[i] == str(user_answer):
            check = "CORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check)
            photo2 = ImageTk.PhotoImage(file='download2.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo2)

        else:
            check = "INCORRECT!!!!!!"
            input_area.insert(
                tkinter.END, check)
            photo3 = ImageTk.PhotoImage(file='download3.jpeg')

            input_area.configure(state="normal")
            input_area.image_create(tkinter.END, image=photo3)

        input_area.insert(
            tkinter.END, check)

        delete()


def delete():

    input_area.after(2000)
    input_area.delete("1.0", "end")
    results_display.delete("1.0", "end")


def main():

    global menu_var, results_display, entry_3
    global input_area, results_label, i

    # can't put spaces between the equal signs in this section

    # set up for all display comments:

    font = Font(family="Helvetica", size=15, weight="bold")

    # text area that displays results using the font above

    results_display = tkinter.Text(root,  # display needs the tkinter window to be put in
                                   height=30,
                                   relief="ridge",
                                   bd=6,
                                   width=60,
                                   font=font,
                                   foreground='black',
                                   background='light blue')

    # photo to display at start
    photo = tkinter.PhotoImage(file='download.png')

    results_display.configure(state="normal")  # allow editing of text
    results_display.image_create(tkinter.END, image=photo)  # inserts photo
    # inserts default text
    results_display.insert(
        tkinter.END, "\n \n Welcome! This is a pratice tool for various math skills. Click 'choose category' to begin.")
    results_display.configure(state="disabled")

   # area for entering large amounts of text

    input_area = tkinter.Text(root,
                              height=30,
                              bd=2,
                              width=60,
                              font=font,
                              foreground='blue',
                              background='orange')

    results_label = tkinter.Label(text="Math Helper")

    # will call the submit() function when pressed
    submit_button = tkinter.Button(
        text="QUESTION", fg='red', bg='white', command=submit)

    check_button = tkinter.Button(
        text="CHECK ANSWER", fg='green', bg='white', command=check_answer)
    # will call "quitting_time" when pressed:
    quit_button = tkinter.Button(root, text="Quit", command=quitting_time)

    # set up pulldown menu of function choices

    # this variable holds the selected value from the menu
    menu_var = tkinter.StringVar(root)
    menu_var.set(OPTIONS[0])  # default value

    # create the option menu (pulldown menu) with the options above
    option_menu = tkinter.OptionMenu(
        root, menu_var, * OPTIONS, command=show_instructions)

    # place everything in the tkinter window
    # a grid allows you to turn the tkinter window into rows and columns and
    # specify where to place everything

    # places the menu in the top left
    option_menu.grid(row=0, column=0, columnspan=1)

    # places the buttons in the top middle
    submit_button.grid(row=0, column=1, columnspan=1)
    check_button.grid(row=0, column=2, columnspan=1)
    quit_button.grid(row=0, column=3, columnspan=1)

    # sets up argument input boxes)
    global entry_3
    entry_3 = tkinter.Entry()

    # places the entry boxes in the next row going across
    #entry_1.grid(row=1, column=0)
    #entry_2.grid(row=1, column=1)
    entry_3.grid(row=1, column=2)
    #entry_4.grid(row=1, column=3)

    # places the label in the next row (one row of text)
    results_label.grid(row=3, column=0, columnspan=4)

    # places the text areas in the next row (whole box of text)
    results_display.grid(row=4, column=0, columnspan=2)
    input_area.grid(row=4, column=2, columnspan=2)
    # this makes it so that words don't get broken up when end of text box is reached
    results_display.config(wrap=tkinter.WORD)
    input_area.config(wrap=tkinter.WORD)

    # waits for button clicks to take actions

    root.mainloop()


if __name__ == "__main__":
    main()
