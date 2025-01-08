# Praat TextGrid Navigation and Scripting Practice Worksheet

---

## Part 1: Navigating and Editing TextGrids in Praat

### 1. Moving Forward and Backward in a TextGrid
- Move forward: `Option + Right Arrow` (Mac) or `Alt + Right Arrow` (Windows)
- Move backward: `Option + Left Arrow` (Mac) or `Alt + Left Arrow` (Windows)


### 2. Creating a Boundary on a Specific Tier
1. Place the cursor at the desired position of the desired tier; or Select the desired interval at the desired tier;
2. Press `Enter` to create the boundary/boundaries.
3. If you want to specify which tier to create the boundary, select the desired position or the desired interval, then Press `Command + Tier number` (Mac) or `Ctrl + Tier number` (Windows).
    - For example, if you want to create a boundary on Tier 2 of your TextGrid, press `Command + 2` or `Ctrl + 2`.


### 3. Deleting a Boundary
- Select the boundary by clicking on it. When a boundary is selected, it is marked in **red** color.
- Press `Option + Delete` (Mac) or `Alt + Backspace` (Windows) to delete the selected boundary.

### 4. Searching in TextGrid
- **Important:** You can only search **forward** in the TextGrid.
1. Navigate to the first interval in the TextGrid. 
2. Press `Command + F` (Mac) or `Ctrl + F` (Windows).

### 5. Add, Rename, and Delete a Tier
1. In the sound editor, under the tab of ``Tier``, you will see the options of ``Add interval tier``, ``Add point tier``, ``Duplicate tier``, ``Rename tier``, ``Remove all text from tier``, ``Remove entire tier``.



---

## Part 2: Praat Scripting for reading and saving files

### 1. Opening a File in a Script
1. The command is `Read from file:`, followed by a blank space and the path of the sound on your computer.
    - Note that the path on Windows is backslash `\` while on Mac is forwardslash `/`.
  
```praat
Read from file: "C:\Work\UW\teaching\ling453_WI25\in-class_exercise\W1\draw_graph_test.wav"
```

### 2. Saving a File in a Script
1. Select which object in the shell you want to save
```praat
selectObject: "Sound draw_graph_test"
```
2. Save the selected object to your computer. The command depends on what you are saving. Look for the command in the GUI. 
    - To save a sound to WAV file, the command is `Write to WAV file:`, followed by a blank space and the path and the filename that you want to save to your computer.
```praat
Save as WAV file: "C:\Work\UW\teaching\ling453_WI25\in-class_exercise\W1\draw_graph_save_test.wav"
```
    - To save a figure to PNG file, the command is `Save as 600-dpi PNG file:`, followed by a blank space and the path and the filename that you want to save to your computer.
```praat
Save as 600-dpi PNG file: "C:\Work\UW\teaching\ling453_WI25\in-class_exercise\W1\draw_graph_save_test.png"

```

### 3. To draw the waveform through Praat script command lines
1. Select the sound object that you want to draw
```praat
selectObject: "Sound draw_graph_test"
```
2. Select where you want the sound object to appear
```praat
Select inner viewport: 0.5, 4, 0.5, 3
```
3. Run the draw command for the sound
```praat
Draw: 0, 0, 0, 0, "no", "curve"
```

## Part 3: In-class Exercise
- Write a Praat script, that read the sound file stored on your computer, draw the waveform of that sound file at desired location, then save that waveform to your computer.
- **What to submit to Canvas:** The Praat script that you wrote, and the picture you generated.
