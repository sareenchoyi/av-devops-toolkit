# 🚗 AV DevOps Toolkit for Linux

This is a lightweight command-line toolkit I built to make daily DevOps and development work easier for teams working on autonomous vehicle (AV) software — especially those on Linux (Debian/Ubuntu). It wraps common workflows (like building with Bazel, deploying Docker containers, monitoring resources, and handling logs) into simple scripts so you don’t have to reinvent the wheel every time.

---

### 💡 Why This Exists

During AV development, you constantly switch between building code, managing containers, checking system performance, and cleaning up logs. Doing all of that manually gets old fast — especially when you're running the same commands over and over or onboarding new teammates.

This toolkit automates the boring stuff and helps avoid mistakes in repetitive tasks, so developers can focus on what really matters: making AV systems smarter and more reliable.

---

### 🛠 Example Use Cases

- **Need to build the localization module?**  
  Run `./scripts/build.sh` to build everything with Bazel in one go.

- **Testing your code inside a containerized runtime?**  
  Use `./scripts/deploy_container.sh` to build and run the Docker image.

- **Trying to debug performance during a test run?**  
  Run `./scripts/monitor.sh` to check CPU, memory, and process usage.

- **Logs piling up during long simulation runs?**  
  Use `./scripts/logs.sh rotate` to archive old logs and `tail` to view live output.

- **Getting new teammates up to speed?**  
  Have them run `./scripts/setup_env.sh` to install Docker, Bazel, formatters, etc.

---

### 🔧 What’s Inside

- Build automation with **Bazel**
- Docker container deployment
- System monitoring (CPU, memory, active processes)
- Log viewing and rotation
- Code linting + formatting (C++/Python)
- One-step environment setup

---

### ✅ Requirements

- Linux (Debian/Ubuntu)
- Bash 5+
- Docker
- Bazel
- Python 3
- Git

Tested on Ubuntu 20.04 and 22.04.

---

### 🚀 Getting Started

```bash
git clone https://github.com/yourusername/av-devops-toolkit.git
cd av-devops-toolkit
chmod +x scripts/*.sh      # Use Git Bash or WSL on Windows
./scripts/setup_env.sh     # Installs dependencies
./scripts/build.sh         # Build your project
./scripts/deploy_container.sh  # Run inside Docker
