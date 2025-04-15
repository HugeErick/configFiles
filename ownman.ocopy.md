# Terminate a Process from Terminal
```bash
pgrep 'process_name'
```

---

# Printing on Epson L355
```bash
lp -d EPSON_L355 /home/erick/documents/sample.pdf
```

---

# Change File Ownership to Root
1. Change owner to root:
   ```bash
   sudo chown root:root secure_file.txt
   ```
2. Set secure permissions:
   ```bash
   sudo chmod 700 secure_file.txt
   ```
3. Open in Neovim:
   ```bash
   sudo nvim secure_file.txt
   ```

---

# Neovim Tricks
- Open a header file with NerdTree:
  - Press `Ctrl-w + gf` to open a new Neovim instance.
- Search for function definition:
  - Press `gd` in normal mode.
- Enable English dictionary:
  - `setlocal spell spelllang=en`
- Check dictionary suggestions:
  - Press `z=`
- Add a word to the dictionary:
  - Press `zg` in normal mode.
- Replace text:
  - `:%s/foo/bar/g` (add `c` at the end for confirmation)
- Switch between buffers:
  - `:bn`
- Return to previous cursor position:
  - `Ctrl + o`
- Prettier formatter:
  - `<Leader>p`
- Copilot
  - `<Leader>t`

---

# SQL Commands
- Start MariaDB with created user:
  ```bash
  sudo /usr/bin/mariadb -u massiveAnalizer -p
  ```
  - Alias:
    ```bash
    sudo mariadb -u massiveAnalizer -p
    ```
- Start MariaDB service:
  ```bash
  sudo systemctl start mariadb
  ```
- Show databases:
  ```sql
  SHOW DATABASES;
  ```
- Show current user:
  ```sql
  SELECT CURRENT_USER();
  ```
- Show tables:
  ```sql
  SHOW TABLES;
  ```
- Execute SQL file:
  ```bash
  sudo /usr/bin/mariadb -u massiveAnalizer -p < sample.sql
  ```
- View table content:
  ```sql
  SELECT * FROM table_name;
  ```

---

# Miscellaneous Commands
- Get GitHub token:
  ```bash
  sudo grep 'GITHUB-DEVSETTINGS-TOKEN=' keys | sed 's/.*GITHUB-DEVSETTINGS-TOKEN=\(.*\)/\1/' | wl-copy
  ```
- Turn on LED lights on external keyboard:
  ```bash
  sudo kbd_mode -f -u
  ```
- List files with newest last:
  ```bash
  ls -ltr
  ```
- Unzip to destination folder:
  ```bash
  unzip <zipfile> -d <destination>
  ```
- Find process ID:
  ```bash
  ps aux
  ```

---

# Commitlint Common Types
According to [commitlint-config-conventional](https://github.com/conventional-changelog/commitlint):
- `build`
- `chore`
- `ci`
- `docs`
- `feat`
- `fix`
- `perf`
- `refactor`
- `revert`
- `style`
- `test`

---

# GitHub Initialization
```bash
git init
git add .
git commit -m "first commit"
git remote add origin <repo.git>
git branch -M main
git push -u origin main
```

---

# Tmux Commands
- Reload configuration:
  ```bash
  tmux source-file ~/.tmux.conf
  ```
- Vertical split:
  ```bash
  ctrl-command + %
  ```
- Horizontal split:
  ```bash
  ctrl-command + "
  ```

---

# Nmap First Touch Scan
```bash
nmap -sC -sV -oA nmap/foldername <ip_address>
```

---

# Assembly Commands
- Compile and link assembly (x86_64, Linux):
  ```bash
  nasm -f elf64 -g filename.asm -o objectfile.o && ld -m elf_x86_64 objectfile.o -o executable
  ```
- Debug with GDB:
  ```bash
  gdb ./filename
  ```

---

# Connecting to WiFi (Terminal)
```bash
nmtui
sudo systemctl restart systemd-resolved
sudo systemctl restart NetworkManager
sudo systemctl restart wpa_supplicant
```

---

# Network Troubleshooting
- Check DNS resolution:
  ```bash
  cat /etc/resolv.conf
  nslookup google.com
  ```
- Check network interface:
  ```bash
  ip link show
  ip addr show
  ```
- Check routing table:
  ```bash
  ip route show
  ```
- Check NetworkManager logs:
  ```bash
  journalctl -u NetworkManager -n 50
  ```
- Restart network interface:
  ```bash
  sudo ip link set wlan0 down
  sudo ip link set wlan0 up
  ```
- Clear DNS cache:
  ```bash
  sudo systemd-resolve --flush-caches
  ```
- Reset network interface:
  ```bash
  sudo nmcli networking off
  sudo nmcli networking on
  ```
- Force reset NetworkManager:
  ```bash
  sudo systemctl stop NetworkManager
  sudo rm /var/lib/NetworkManager/NetworkManager.state
  sudo systemctl start NetworkManager
  ```
- Temporarily set Google DNS:
  ```bash
  echo "nameserver 8.8.8.8" | sudo tee /etc/resolv.conf
  ```

---

# MATLAB Compilation
1. Install MATLAB with `sudo matlab`
2. Add MATLAB to `PATH`:
   ```bash
   export PATH=$PATH:/usr/local/MATLAB/R2022a/bin
   ```
3. Compile:
   ```bash
   mcc -m filename.m
   ```
4. Run compiled script:
   ```bash
   /usr/local/MATLAB/R2024a/filename
   ```

---

# SSH
- Connect: 
  ```bash
sudo ssh -i <key> ubuntu@<ip>  
``` 
- Detach:
```bash
Ctrl + d
```
- Screen:
  ```bash
  Ctrl + a, then d
  ```
- Tmux:

---

# Extract `.tar.gz` File
```bash
tar -xzf filename.tar.gz
```

---

# Audio & Microphone Fix
```bash
pulseaudio -k
pulseaudio -D
pavucontrol
```

---

# Stuck `sudo`
```bash
stty sane
# or
sudo pkill sudo
```

---

# HDMI Display Mirroring
```bash
xrandr --output HDMI-1 --same-as eDP-1 --auto
```

---

# Keyboard Issues
- Disable key repeat:
  ```bash
  xset -r
  ```
- Re-enable key repeat:
  ```bash
  xset r
  ```

---
## Neo-tree keybindings for navigation and file operations:

### Basic Navigation:

- `j` and `k`: Move up and down in the tree
- `h`: Close the current folder or go to parent folder
- `t`: Open folder or open file
- `<C-t>`: Toggle Neo-tree window (we set this in the config)
- `<CR>` Open file/folder
- `.`: Set the root of the tree to current directory
- `<BS>` Go up one directory
- `H`: Toggle hidden files (.gitignore, .hidden, etc)

File Operations:

- `a`: Add a new file/directory (will prompt for name)
- `d`: Delete the file/directory under cursor
- `r`: Rename the file/directory under cursor
- `y`: Copy file name to system clipboard
- `Y`: Copy relative path to system clipboard
- `<C-y>`: Copy absolute path to system clipboard
- `c`: Copy file/directory to a destination
- `m`: Move file/directory to a destination

Working with Multiple Files:

- `<Space>`: Mark file (for bulk operations)
- `<C-Space>`: Clear marked files
- `s`: Open file in a split
- `S`: Open file in vertical split

Finding Files:

- `/`: Start a live filter of nodes in the tree
- `<C-x>`: Clear the live filter
- `<Esc>`: Clear live filter and cancel any operation
- `f`: Filter tree by pattern (more powerful than live filter)

Refresh and Git:

- `R`: Refresh the tree
- `?`: Open help menu with all keybindings
- `g?`: Show git status

Some Tips:

1. You can press `?` at any time to see all available commands
2. Most operations that change files (delete, rename) will ask for confirmation
3. If you mark multiple files with `<Space>`, operations like delete will affect all marked files
4. The live filter (`/`) is great for quickly finding files in large projects

# International Characters
- Spanish: á, é, í, ó, ú, ñ, ü
- German: ä, ö, ü, ß

# Best usefull Font
- 0xProto Nerd Font (supports many things)
## Installation
1. Unzip
```bash
unzip ~/downloads/0xProto.zip -d ~/.local/share/fonts/
```
2. Update Font Cache
```bash
fc-cache -fv
```
3. Verify
```bash
fc-list | grep "0xProto"
```

# Tip for greenclip
- nohup greenclip daemon &

