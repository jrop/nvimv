# nvimv 🚀

**The simple Neovim version manager**

Easily install, manage, and switch between different versions of Neovim without the hassle. Perfect for testing new features, maintaining compatibility, or just keeping your setup organized.

## 📚 Table of Contents

- [✨ Features](#-features)
- [🚀 Quick Start](#-quick-start)
- [📋 Commands](#-commands)
- [💡 Common Workflows](#-common-workflows)
- [🛠️ Installation](#️-installation)
- [📄 License (MIT)](#-license-mit)

## ✨ Features

- 🔄 **Switch versions instantly** - Jump between Neovim versions with a single command
- 📦 **Auto-download & install** - Fetches official releases directly from GitHub
- 🏗️ **Cross-platform** - Works on Linux and macOS (Intel & Apple Silicon)
- 🎯 **Zero configuration** - Works out of the box with sensible defaults
- 🧹 **Clean management** - Easy installation, upgrade, and removal

## 🚀 Quick Start

```bash
# Install the latest stable version
nvimv install stable

# Use it as your default nvim
nvimv use stable

# That's it! Now `nvim` runs the version you selected
nvim --version
```

## 📋 Commands

| Command       | Description                      | Example                        |
| ------------- | -------------------------------- | ------------------------------ |
| `install`     | Install a specific version       | `nvimv install v0.9.0`         |
| `use`         | Switch to a version              | `nvimv use stable`             |
| `exec`        | Run nvim with a specific version | `nvimv exec nightly --version` |
| `list`        | Show installed versions          | `nvimv list`                   |
| `list-remote` | Show available versions          | `nvimv list-remote`            |
| `upgrade`     | Upgrade an installed version     | `nvimv upgrade stable`         |
| `remove`      | Remove a version                 | `nvimv remove v0.8.0`          |
| `env`         | Show environment for a version   | `nvimv env stable`             |

## 💡 Common Workflows

### Try the latest features

```bash
# Install and test nightly builds
nvimv install nightly
nvimv exec nightly  # Test without switching your default
```

### One-off commands for specific versions

```bash
# Use different versions for different projects
cd my-old-project && nvimv exec v0.8.0
cd my-new-project && nvimv exec nightly
```

### Clean up old versions

```bash
# See what you have installed
nvimv list

# Remove versions you don't need
nvimv remove v0.7.0
```

## 🛠️ Installation

### Quick Install (Recommended)

```bash
# Download and run the install script
curl -fsSL https://raw.githubusercontent.com/jrop/nvimv/main/install | bash
```

### Custom Installation

```bash
# Install to a custom directory
NVIMV_INSTALL_DIR=/usr/local/bin curl -fsSL https://raw.githubusercontent.com/jrop/nvimv/main/install | bash

# Or with a custom prefix
PREFIX=/opt/local curl -fsSL https://raw.githubusercontent.com/jrop/nvimv/main/install | bash
```

### Manual Installation

1. Download the `nvimv` script
2. Make it executable: `chmod +x nvimv`
3. Put it in your PATH (e.g., `mv nvimv ~/.local/bin/`)

**Dependencies:** `curl`, `jq`

## 📄 License (MIT)

Copyright (c) 2025 Jonathan Apodaca <jrapodaca@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

This project is open source. Check the repository for license details.
