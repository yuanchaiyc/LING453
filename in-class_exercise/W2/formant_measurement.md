# Measuring Formants

**Created by Rebecca Scarborough**  
**Modified by Yuan Chai**

## Set up a log file & formant tracking:

### 1. Set up a log file in Praat to save your measurements.
- Open a sound in an Editor window. To start a log, go to **“Analysis” → “Log settings…”**.  
- Choose a location and file name for **“Log file 2:”**. Recommended file names:  
  - Mac: `~Desktop/formant_Log.csv`  
  - PC: `C:\Users\yourusername\Desktop\formant_Log.csv`  
- In **“Log 2 format:”**, type the following:  
```praat
't1:3' , 'f1:0' , 'f2:0' , 'f3:0' , 'editor$'
```

This will log:
- **t1**: Time at the cursor point  
- **F1, F2, F3**: Formant values at the cursor point  
- **editor$**: Name of the file  
- To record formant values:
- Click the relevant point in the waveform or spectrogram and press **Shift-F12**.  
- Alternatively, select **“Log 2”** from the **“Analysis”** menu.  
- Each measurement will display in a **“Praat: Info”** window and write to the file you set up.

### 2. Turn on formant tracking.
- Select **“Show formants”** in the **“Formant”** menu in the Sound window.

### 3. Query formant tracks without logging.
- Select **“Formant listing”** from the **“Formant”** menu to see **F1-F4** values at the cursor point.

---
This will log:
- **t1**: Time at the cursor point  
- **F1, F2, F3**: Formant values at the cursor point  
- **editor$**: Name of the file  


---

## Measure formants:

### 4. Locate the vowel to examine. 
- Measure **F1-F3** at a stable point near the middle of the vowel.
- If studying transitions, measure **F1-F3** near the beginning or end of the vowel (~10ms from the vowel edge).  
- Note: Your log is set up to log all 3 formants at once.

### 5. To record the formant values in the log file
- Click the relevant point in the waveform or spectrogram and press **Shift-F12**.  
- Alternatively, select **“Log 2”** from the **“Query”** menu.  
- Each measurement will display in a **“Praat: Info”** window and write to the file you set up.

### 6. Verify your measurements.
- Ensure that your measurements are reasonable.  
- Check that the formant track looks correct at the measurement point.  
- Confirm the logged values are in the expected range.

### 7. Organize your data collection.
- Before starting, plan how to organize your data to avoid losing track of measurements.  
- Think about the structure of your log file output.






