# Dotfiles

Meine persoenliche Dotfiles-Sammlung, verwaltet mit [GNU stow](https://www.gnu.org/software/stow/).
Stow erstellt Symlinks aus den Unterverzeichnissen in das Home-Verzeichnis.

## Verzeichnisse

| Verzeichnis | Symlink-Ziel | Beschreibung                                              |
| ----------- | ------------ | --------------------------------------------------------- |
| `brew/`     | —            | Homebrew Bundle: alle Pakete, Casks und VS Code Extensions |
| `git/`      | `~/`         | Globale Git-Konfiguration (`.gitconfig`, `.gitignore_global`, ...) |
| `ssh/`      | `~/`         | SSH-Konfiguration inkl. `config.d/`-Struktur und 1Password-Agent |

## Setup auf einem neuen Mac

### 1. Xcode Command Line Tools installieren

```bash
xcode-select --install
```

### 2. Homebrew installieren

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 3. Repository klonen

```bash
git clone <repo-url> ~/.dotfiles
cd ~/.dotfiles
```

### 4. Pakete installieren

```bash
brew bundle install --file=brew/Brewfile --no-upgrade
```

### 5. Dotfiles verlinken (stow)

```bash
stow git
stow ssh
```

### 6. Nicht versionierte Dateien manuell anlegen

Einige Dateien sind per `.gitignore` ausgeschlossen und muessen manuell erstellt werden:

- **SSH-Schluessel**: `~/.ssh/id_ed25519` etc. (aus Backup oder neu generieren)
- **SSH Host-Configs**: `~/.ssh/config.d/01_private`, `02_proxmox` etc.
- **Git-User-Configs**: `~/.gitconfig-private` und `~/.gitconfig-work` (siehe `git/README.md`)

## Dotfile aktualisieren

Einzelnes Verzeichnis neu verlinken nach Aenderungen:

```bash
stow -R git
```

## Weiterfuehrendes

- [git/README.md](git/README.md) — Details zur Git-Konfiguration und konditionellen Includes
- [ssh/README.md](ssh/.ssh/README.md) — Details zur SSH-Konfiguration und 1Password-Agent
- [brew/README.md](brew/README.md) — Details zum Brewfile und Verwendung
