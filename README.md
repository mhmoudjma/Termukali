
---

# ⚙️ Kali Linux Installer for Termux (Auto Toolkit) – v4

A powerful and ready-to-use Kali Linux installer for Termux, featuring essential Red Team tools — now upgraded with **v4** including four different installation methods (including NetHunter!), smoother tool installations, and clearer support for Termux.

---

## 🚀 New in v4

- ✅ **Added support for Kali NetHunter** installation in Termux (Method 4)
- ✅ Improved error handling and user guidance
- ✅ Enhanced user interface and cleaner script structure
- ✅ Updated list of tools and references
- ✅ Menu updated with direct links and better feedback

---

## 📦 What's Inside?

- `install.sh` → Main interactive launcher (auto-installer + tools)
- `kali.sh` → Automates Kali installation (method-based)
- Tool installation logic embedded inside menu script
- **T.DROP** → Custom Red Team tool from this repo  
  → [T.DROP GitHub](https://github.com/mhmoudjma/T.DROP)

---

## 📸 Screenshots

### 🔹 Main Menu
![Main Menu](https://github.com/mhmoudjma/Termukali/blob/main/photo/Main%20Menu.jpg)
### 🔹 Run Kali
![Run Kali](https://github.com/mhmoudjma/Termukali/blob/main/photo/Run%20Kali.jpg)

For more screenshots, see the [Commits & Changes](https://github.com/mhmoudjma/Termukali/tree/main/photo)

---

## 📥 How to Install

### 1. Download and Run the Project

bash 
```
apt update && apt upgrade 
apt install proot git wget
git clone https://github.com/mhmoudjma/TermuKali
cd TermuKali
chmod +x install.sh
bash install.sh
```
1.1 You may have a problem with the key.
```
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 827C8569F2518CC677FECA1AED65462EC8D5E4C5
```
2. Run the Installer Menu Manually
```
chmod +x install.sh
bash install.sh
```
**Image to help you
![Run_comands](https://github.com/mhmoudjma/Termukali/blob/b26cdebe107cd2b56b7cdbadc61cfcc7adf9516e/photo/Rum_commands.jpg)
---

🧰 Available Tools

Recon:

nmap, whois, amass, dnsutils, recon-ng, theHarvester

Scanning:

whatweb, nikto, wafw00f

Exploitation:

sqlmap, metasploit-framework, hydra

Password Cracking:

john, crunch

Phishing:

zphisher, HiddenEye, SocialFish

Extras:

T.DROP → https://github.com/mhmoudjma/T.DROP


---

🔧 Manual Tool Installation

If the tools fail to install automatically, you can run this inside Kali:
```
sudo apt update
sudo apt install -y nmap whois dnsutils net-tools whatweb nikto wafw00f theharvester recon-ng amass sqlmap metasploit-framework hydra john crunch
```
And clone phishing tools manually:
```
git clone https://github.com/htr-tech/zphisher
git clone https://github.com/DarkSecDevelopers/HiddenEye
git clone https://github.com/UndeadSec/SocialFish
git clone https://github.com/mhmoudjma/T.DROP
```

---

🗺️ Roadmap

✅ V4 Released

Added NetHunter support

Improved installer logic

Enhanced error handling


🚀 Coming in V5:

Automatic tool installation inside selected distro

Dynamic detection of installed distros

Better logging and debugging options

Multi-language support for menu interface



---

⭐ Support This Project

If you find this project helpful, please consider giving it a ⭐ on GitHub:
👉 Install.kali on GitHub


---

⚠️ Disclaimer

> This script is for educational purposes only. The author is not responsible for any misuse. Please use ethically and responsibly.

---
 🌟NOTE

A new name has been recently adopted, which is: (Install.kali → TermuKali)
---
📈 **Project Stats (As of 2025-07-14)**

- ✅ 141+ unique clones in just 16 days since launch!
- 📥 Over 160 total clones so far.
- 🛠️ 8 Issues opened and successfully resolved.
- 🔄 4 versions released with ongoing updates.
- 🔐 Security enhancements implemented for safer usage.

⭐ If you find this tool helpful, give it a Star and join our community!

---

📄 License

This project is licensed under the MIT License – see the LICENSE file for details.

---
⚠️ **Project Migration Notice**

This project was previously hosted under a different GitHub account. Due to security and privacy reasons, it has been moved here. As a result, the stars and traffic stats (clones/views) have been reset. 

Development will continue as normal in this repository. Thank you for your support!

— (mhmoudjma)
---

👨‍💻 Author

MhmoudJma
Red Team enthusiast & cybersecurity student
GitHub: @mhmoudjma

---
