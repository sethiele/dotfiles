# Homebrew Bundle

Dieses Verzeichnis enthält die [Homebrew Bundle](https://github.com/Homebrew/homebrew-bundle) Konfiguration für alle installierten Pakete, Casks und VS Code Extensions.

## Struktur

| Datei      | Beschreibung                                                                              |
| ---------- | ----------------------------------------------------------------------------------------- |
| `Brewfile` | Deklarative Liste aller installierten Homebrew-Pakete, Casks und VS Code Extensions      |

## Inhalt des Brewfile

**CLI-Tools (`brew`)**

| Paket               | Zweck                                          |
| ------------------- | ---------------------------------------------- |
| `ansible`           | Automatisierung und Konfigurationsmanagement   |
| `curl`              | HTTP-Client für die Kommandozeile              |
| `git`               | Versionskontrolle                              |
| `hugo`              | Static Site Generator                          |
| `lftp`              | FTP/SFTP-Client für die Kommandozeile          |
| `stow`              | Symlink-Manager für Dotfiles                   |
| `markdownlint-cli2` | Markdown-Linter                                |

**Apps (`cask`)**

| App               | Zweck                                          |
| ----------------- | ---------------------------------------------- |
| `1password`       | Passwort-Manager                               |
| `adobe-acrobat-reader` | PDF-Viewer                                |
| `alfred`          | App-Launcher und Produktivitäts-Tool           |
| `balenaetcher`    | Flash-Tool für OS-Images auf SD/USB            |
| `bambu-studio`    | Slicer-Software für Bambu Lab 3D-Drucker       |
| `bricklink-studio`| LEGO-Modell-Builder                            |
| `calibre`         | E-Book-Verwaltung                              |
| `cyberduck`       | FTP/SFTP/S3-Client                             |
| `drawio`          | Diagramm-Editor                                |
| `firefox`         | Webbrowser                                     |
| `google-chrome`   | Webbrowser                                     |
| `iterm2`          | Terminal-Emulator                              |
| `lm-studio`       | Lokale LLMs herunterladen und ausführen        |
| `logi-options+`   | Logitech Maus- und Tastatur-Verwaltung         |
| `miro`            | Kollaboratives Online-Whiteboard               |
| `moneymoney`      | Kontoverwaltung und Finanzen                   |
| `obsidian`        | Notizen und Wissensmanagement (Markdown)       |
| `podman-desktop`  | Container-Verwaltung (Docker-Alternative)      |
| `protonvpn`       | VPN-Client                                     |
| `rectangle`       | Fensterverwaltung per Tastaturkürzel           |
| `signal`          | Verschlüsselter Messenger                      |
| `sourcetree`      | Grafischer Git-Client                          |
| `synology-drive`  | Sync-Client für Synology NAS                   |
| `visual-studio-code` | Code-Editor                                 |

**VS Code Extensions (`vscode`)**

| Extension                                        | Zweck                             |
| ------------------------------------------------ | --------------------------------- |
| `anthropic.claude-code`                          | Claude Code KI-Assistent          |
| `be5invis.toml`                                  | TOML-Sprachunterstützung          |
| `davidanson.vscode-markdownlint`                 | Markdown-Linting                  |
| `editorconfig.editorconfig`                      | Editor-Konfiguration aus `.editorconfig` |
| `github.vscode-github-actions`                   | GitHub Actions Unterstützung      |
| `hackmd.vscode-hackmd`                           | HackMD-Integration                |
| `ms-vscode-remote.remote-ssh`                    | Remote-Entwicklung via SSH        |
| `ms-vscode-remote.remote-ssh-edit`               | SSH-Konfiguration bearbeiten      |
| `ms-vscode.remote-explorer`                      | Remote-Explorer UI                |
| `rusnasonov.vscode-hugo`                         | Hugo-Unterstützung                |
| `streetsidesoftware.code-spell-checker`          | Rechtschreibprüfung (EN)          |
| `streetsidesoftware.code-spell-checker-german`   | Rechtschreibprüfung (DE)          |
| `yzhang.markdown-all-in-one`                     | Markdown-Editor-Erweiterungen     |

## Verwendung

Alle Pakete auf einem neuen System installieren:

```sh
brew bundle install --no-upgrade
```

Pakete deinstallieren, die nicht im Brewfile stehen:

```sh
brew bundle cleanup --force
```

Aktuellen Stand in das Brewfile exportieren:

```sh
brew bundle dump --force
```

Weitere Tipps: [Brew Bundle Brewfile Tips](https://gist.github.com/ChristopherA/a579274536aab36ea9966f301ff14f3f)
