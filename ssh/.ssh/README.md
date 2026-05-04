# SSH-Konfiguration

Dieses Verzeichnis enthält die SSH-Konfiguration als Teil der Dotfiles. Es wird per Symlink nach `~/.ssh` verlinkt.

## Struktur

| Datei / Verzeichnis | Beschreibung |
|---|---|
| `config` | Haupt-SSH-Konfiguration – bindet alle Dateien aus `config.d/` ein (`Include config.d/*`) |
| `config.d/` | Modulare SSH-Configs, nach Kontext aufgeteilt |
| `config.d/00_all` | Gilt für alle Hosts – setzt 1Password als SSH-Agent (`IdentityAgent`) |
| `config.d/01_private` | Host-Einträge für private Hosts (nicht versioniert, muss manuell angelegt werden) |
| `config.d/02_proxmox` | Host-Einträge für Proxmox-Infrastruktur (nicht versioniert, muss manuell angelegt werden) |
| `agent/` | SSH-Agent-Daten (nicht versioniert) |
| `id_ed25519` | Privater SSH-Schlüssel (nicht versioniert, muss manuell angelegt werden) |
| `id_ed25519.pub` | Öffentlicher SSH-Schlüssel (nicht versioniert, muss manuell angelegt werden) |
| `known_hosts` | Bekannte Host-Fingerprints (nicht versioniert, wird automatisch befüllt) |

## Versioniert vs. manuell anlegen

Durch `.gitignore` sind folgende Dateien **nicht** im Repository und müssen auf einem neuen System **manuell angelegt** werden:

- `id_*` – alle privaten und öffentlichen Schlüssel
- `known_hosts` und `known_hosts.old`
- `agent/*` – Inhalte des Agent-Verzeichnisses
- `config.d/*` – alle Config-Fragmente **außer** `config.d/00_all`

Nur `config.d/00_all` ist versioniert (per Ausnahmeregel `!/ssh/.ssh/config.d/00_all` in `.gitignore`).

## 1Password SSH-Agent

Die Datei `config.d/00_all` konfiguriert 1Password als SSH-Agent für alle Hosts:

```
Host *
  IdentityAgent "~/Library/Group Containers/2BUA8C4S2C.com.1password/t/agent.sock"
```

SSH-Schlüssel werden damit über 1Password verwaltet und müssen nicht unverschlüsselt auf der Festplatte liegen.
