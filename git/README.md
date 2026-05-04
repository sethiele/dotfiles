# Git-Konfiguration

Dieses Verzeichnis enthält die globale Git-Konfiguration als Teil der Dotfiles.

## Struktur

| Datei                | Beschreibung                                                                 |
| -------------------- | ---------------------------------------------------------------------------- |
| `.gitconfig`         | Haupt-Git-Konfiguration (versioniert)                                        |
| `.gitconfig-private` | Privater Git-User mit E-Mail (nicht versioniert, muss manuell angelegt werden) |
| `.gitconfig-work`    | Beruflicher Git-User mit E-Mail (nicht versioniert, muss manuell angelegt werden) |
| `.gitignore_global`  | Globale Ignore-Regeln fuer alle Repositories (`*.DS_Store`, `*~`)            |
| `.gitflow_export`    | Pfad zum `getopt`-Binary fuer git-flow via Sourcetree                        |

## Inhalt der .gitconfig

- **Farben**: Status, Diff, Branch und interaktive Ausgaben sind eingefaerbt
- **Globales Gitignore**: `~/.gitignore_global`
- **Difftool / Mergetool**: Sourcetree (`opendiff`)
- **Default Branch**: `main`
- **Commit-Template**: `~/.stCommitMsg`
- **Konditionelle Includes** je nach Repository-Pfad:

| gitdir-Pfad             | Eingebundene Konfiguration  |
| ----------------------- | --------------------------- |
| `~/projects/work/`      | `~/.gitconfig-work`         |
| `~/projects/private/`   | `~/.gitconfig-private`      |
| `~/.dotfiles/`          | `~/.gitconfig-private`      |

## Nicht versionierte Dateien (manuell anlegen)

Durch `.gitignore` ist das Muster `git/.gitconfig-*` ausgeschlossen.
Folgende Dateien muessen auf einem neuen System **manuell erstellt** werden:

**`~/.gitconfig-private`** — fuer Repositories unter `~/projects/private/` und `~/.dotfiles/`:

```ini
[user]
    email = deine@email.de
    name = Dein Name
```

**`~/.gitconfig-work`** — fuer Repositories unter `~/projects/work/`:

```ini
[user]
    email = name@firma.de
    name = Dein Name
```
