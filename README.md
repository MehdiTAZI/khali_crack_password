# 🔐 TrueCrypt Hash Extraction Using Kali Linux Docker

This guide walks you through extracting a password hash from a TrueCrypt volume using Kali Linux inside a Docker container. 

---

## 📦 Prerequisites

- [Docker](https://www.docker.com/) installed and running
- [Colima](https://github.com/abiosoft/colima) (or another Docker runtime if you're on macOS/Linux)
- A TrueCrypt volume file (e.g., `secret.tc`)

---

## 🛠️ Setup & Execution

### 1. Create a Working Directory
mkdir data

### 2. Start Docker Runtime (if using Colima)
colima start docker

### 3. Run Kali Linux in Docker
docker run -v $(pwd):/data -it kalilinux/kali-rolling /bin/bash

### 4. Install Required Tool (john)
Inside the Kali container, run:
apt update && apt install -y john

### 5. Switch to Mounted Directory
cd /data

### 6. Extract Hash from TrueCrypt Volume
truecrypt2john path_to_truecrypt_file > hash.txt

Replace path_to_truecrypt_file with your actual file (e.g., secret.tc).
This creates hash.txt containing the password hash.

### 7. Create passwords dictionary
In that case it generates passwords from a pattern
run script.sh it will create all possible combinaisons for part1.txt part2.txt part3.txt and using all possible separators sep.txt

chmod 700 script.sh
./script.sh

### 8. Check the passwords to genenrates the hash and compare i
john --wordlist=final_dict.txt hash.txt

hash.txt contains the extracted hashpassword
final_dict contains all the passwords to check


### 9. Show the password
john --show hash.txt



