

## 🔥 `CTF-killer` – The Ultimate Bash Starter Script for CTF Recon

**CTF-killer** is a personalized Bash script designed by Daniel Brodsky to streamline the initial recon and setup phase of Capture The Flag (CTF) challenges.  
It automates repetitive tasks, sets up clean working environments, and ensures temporary variables like the target IP and notes file are available in your current shell.

---

### 🎯 Features

- 💡 Interactive prompts for **Target IP** and **CTF machine name**
- 📁 Auto-creates a uniquely timestamped directory for each CTF session
- 📝 Initializes a markdown `notes.md` file for recon & exploitation notes
- 🔍 Runs an `nmap -sC -sV` scan and saves the output automatically
- ⚙️ Exports key variables (`$TARGETIP`, `$NOTES`) to your shell
- 🚫 Smart `source` enforcement – avoids incorrect usage

---

### 🧪 Built for:
- HTB / TryHackMe / CTF platforms
- Bootcamp students & self-learners
- Anyone who wants **less setup, more pwning**

---

### ⚠️ Usage

**This script must be run with `source`** to preserve environment variables:

```bash
source ./CTF-killer.sh
```

Running it directly with `bash` will exit with a warning.

---

