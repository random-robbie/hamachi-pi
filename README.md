# Install Hamachi on Raspberry Pi

This script installs **LogMeIn Hamachi** on your Raspberry Pi (ARM HF / Raspbian-based systems).  
It automates the download, installation, and configuration steps.

> ⚠️ This script is intended for **Raspbian (Hard Float)** or compatible Debian-based ARM systems.

---

## 🔧 Installation

To install, run the following commands in your terminal:

```bash
wget https://raw.githubusercontent.com/txt3rob/hamachi-pi/master/hamachi.sh
chmod +x hamachi.sh
./hamachi.sh
```

The script will:

- Install required dependencies
- Download and install the latest Hamachi package
- Start the Hamachi service
- Prompt you for your LogMeIn account email and Raspberry Pi nickname

---

## 📡 Network Access

Once completed, your Raspberry Pi will appear in your **Hamachi** network dashboard and can be accessed remotely via the Hamachi virtual IP.

---

## 🛠️ Troubleshooting & Support

If you encounter issues:

- Please [open an issue](https://github.com/txt3rob/hamachi-pi/issues) on this GitHub repository for support or bug reports.

---

## 🚀 Consider an Alternative: Tailscale

If you're looking for a more modern, secure, and easy-to-manage alternative to Hamachi, consider using [Tailscale](https://tailscale.com/) — a WireGuard-based VPN that works seamlessly on Raspberry Pi:

```bash
curl -fsSL https://tailscale.com/install.sh | sh
sudo tailscale up
```

Tailscale offers:

- Easy device access with no port forwarding
- ACL-based access controls
- Free tier for personal use
- Seamless mobile and desktop integration

---

## 🤖 Maintainer Note

This project is community-maintained.  
PRs and improvements are welcome!
