
## Disable Smart App Control (SAC) via Registry

Smart App Control (SAC) can be disabled by modifying a specific registry value. This is an **advanced method** and may not work in all cases due to system protections.



### 🔧 Registry Method (Advanced)

**Registry Path**


```
HKEY_LOCAL_MACHINE > SYSTEM > CurrentControlSet > Control > CI > Policy
```



**Steps**

1. **Open Registry Editor**  
   Press **Win + R**, type `regedit`, then press **Enter**.

2. **Navigate to the Key**  
   Go to:  
   `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\CI\Policy`

3. **Modify the Value**  
   Locate the DWORD value:  
   **`VerifiedAndReputablePolicyState`**

   Set one of the following:
   - `0` → **Off** (Disable Smart App Control)
   - `1` → **On**
   - `2` → **Evaluation Mode**

4. **Restart**  
   Reboot your computer for the change to take effect.


### ⚠️ Important Considerations

- **Clean Install Limitation**  
  Historically, once SAC was turned off, re-enabling it required a **clean Windows 11 install**.  
  Microsoft is gradually removing this limitation in newer Insider builds.

- **Protected Registry Key**  
  The `CI` key may be protected. If changes don’t apply, you may need to:
  - Edit the registry hive from **Windows Recovery Environment (WinRE)**, or  
  - Modify the key as **NT AUTHORITY\SYSTEM**

- **Try Settings First (Recommended)**  
  Always attempt the standard method before registry edits:  
  **Settings → Privacy & security → Windows Security → App & browser control → Smart App Control**

> ⚡ Tip: Registry edits can affect system stability. Proceed only if you’re comfortable with advanced Windows configuration.
