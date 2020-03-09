import tkinter.filedialog as filedialog
import tkinter as tk

master = tk.Tk()

def input():
    input_path = tk.filedialog.askdirectory()
    input_entry.delete(1, tk.END)  # Remove current text in entry
    input_entry.insert(0, input_path)  # Insert the 'path'

def output():
    output_path = tk.filedialog.askdirectory()
    output_entry.delete(1, tk.END)  # Remove current text in entry
    output_entry.insert(0, output_path)  # Insert the 'path'

def execute():
    print("here are the values: ")
    input_entry_val = input_entry.get()
    output_entry_val = output_entry.get()
    mesh_decimate_val = mesh_decimate_entry.get() 
    print("input_entry: ", input_entry_val)
    print("output_entry: ", output_entry_val)
    print("mesh_decimate: ", mesh_decimate_val)
    # run andrew's script with input

top_frame = tk.Frame(master)
middle_frame = tk.Frame(master)
bottom_frame = tk.Frame(master)
line = tk.Frame(master, height=1, width=400, bg="grey80", relief='groove')
line2 = tk.Frame(master, height=1, width=400, bg="grey80", relief='groove')

input_path = tk.Label(top_frame, text="Image folder input path:")
input_entry = tk.Entry(top_frame, text="", width=40)
input_browse = tk.Button(top_frame, text="Browse", command=input)

output_path = tk.Label(middle_frame, text="Model output folder path:")
output_entry = tk.Entry(middle_frame, text="", width=40)
output_browse = tk.Button(middle_frame, text="Browse", command=output)

mesh_decimate_entry = tk.IntVar()
mesh_decimate_ckbox = tk.Checkbutton(bottom_frame, text="MeshDecimate?", variable=mesh_decimate_entry)

begin_button = tk.Button(bottom_frame, text='Begin!', command=execute)

top_frame.pack(side=tk.TOP)
line.pack(pady=10)
middle_frame.pack(side=tk.TOP)
line2.pack(pady=10)
bottom_frame.pack(side=tk.BOTTOM)

input_path.pack(pady=5)
input_entry.pack(pady=5)
input_browse.pack(pady=5)

output_path.pack(pady=5)
output_entry.pack(pady=5)
output_browse.pack(pady=5)
mesh_decimate_ckbox.pack(pady=20, fill=tk.X)
begin_button.pack(pady=20, fill=tk.X)

master.mainloop()
