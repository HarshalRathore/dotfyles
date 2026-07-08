# Obsidian Vault Remote Access Config

Generated: 2026-07-08T11:30:50+00:00

## WebDAV Server

|Field|Value|
|---|---|
|**Protocol**|WebDAV|
|**Host (IPv4)**|100.100.129.5|
|**Host (IPv6)**|[fd7a:115c:a1e0::dd37:8105]|
|**Port**|8596|
|**Username**|vault|
|**Password**|CkPV2QohMi0WUBf4IQCybzGNw0MBqknD|
|**Base URL**|http://100.100.129.5:8596/|

## Mobile Setup (Android)

### Prerequisites
1. Tailscale app installed and signed in to harshalrathore2014@gmail.com
2. Obsidian app installed
3. Remotely Save plugin (free, from community plugins)

### Step-by-Step

1. **Connect Tailscale** on your phone
   - Open Tailscale app
   - Verify you see "skynet" in the peer list (100.100.129.5)
   - Connection is wireguard-encrypted

2. **Install Remotely Save** plugin
   - Obsidian -> Settings -> Community plugins -> Browse
   - Search "Remotely Save" by fyears
   - Install and Enable

3. **Configure Remotely Save**
   - Remote type: `WebDAV`
   - Server URL: `http://100.100.129.5:8596/` (trailing slash required)
   - Username: `vault`
   - Password: `CkPV2QohMi0WUBf4IQCybzGNw0MBqknD`
   - Click "Check" to verify connection

4. **Sync Settings**
   - Scheduled auto-sync: ON (every 5 min)
   - Sync on save: ON
   - Skip large files: ON (>50 MB)
   - End-to-end encryption: OFF (content is public; enable if desired)

5. **Initial Sync**
   - Tap the sync icon (circle arrows) in the ribbon
   - Wait for first sync to complete
   - Your full vault (including .obsidian config) will appear

### Architecture Notes

- **Laptop → Server**: git push -> webhook? No, uses polling every 60s
- **Server → Mobile**: WebDAV served by dufs (Docker), auth-protected
- **Mobile → Git**: systemd timer commits every 10min and pushes
- **Tailscale only**: No public ports exposed. WireGuard encrypted.
- **Recovery**: git is always source of truth. `git pull` anywhere.

### Troubleshooting

|Problem|Fix|
|---|---|
|Sync stuck|Close/open Obsidian, check Tailscale is on|
|Auth error|Re-enter password from this file|
|File conflicts|Remotely Save free: picks newer or larger file. PRO: merge smart|
|Vault not showing|Check base URL has trailing slash|
