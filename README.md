# 🛠 Sys Menu

Ferramenta tudo-em-um de diagnóstico e otimização do sistema Linux.

**UI em Python** · **Tarefas em Shell** · **Multi-distro**

## Funcionalidades

```
📊  Diagnóstico e monitoramento
├── 🔍  Diagnóstico completo (sistema, CPU, RAM, disco, GPU, WiFi, portas, boot, zram)
├── ⚡  Hardware (CPU, GPU, boot analysis, dispositivos PCI)

🌐  Rede e WiFi
├── 📶  WiFi — diagnóstico, DNS (1.1.1.1), power saving, scan
├── 🌐  Rede — portas abertas, firewall, ping Cloudflare/Google

💾  Armazenamento e disco
├── 💾  Zram — status e ativação
├── 💽  SMART — saúde do disco + teste rápido
├── 📁  Espaço — análise de partições, top pastas, lixeira

🧹  Manutenção e limpeza
├── 🧹  Manutenção geral — update, clean, logs, trim, fix
├── 🧼  Limpeza profunda — kernels antigos, /tmp, cache
├── 🔄  Gestão de serviços — start/stop/restart, enable/disable
├── 🏁  Auto-Pilot — tudo automático (update + clean + zram + DNS + ...)

🔒  Segurança e utilizadores
├── 🔐  Segurança — SSH falhados, sudo audit, portas suspeitas, logins
├── 👥  Utilizadores — quem está logado, últimos logins, reboots

🐳  Extras
├── 🐳  Docker — containers ativos, imagens, limpeza
├── 📦  Flatpak — apps instaladas, updates

📋  Exportar — diagnóstico completo para .txt
```

## Instalação

```bash
git clone https://github.com/anymousdark/sysmenu.git
cd sysmenu
./sysmenu
```

Ou instalação global:

```bash
sudo cp sysmenu /usr/local/bin/
sysmenu
```

## Suporte a distribuições

| Distro | Package Manager | Serviços | Testado |
|--------|----------------|----------|---------|
| Debian / Ubuntu / Pop!_OS / Mint | `apt-get` | systemd | ✅ |
| Fedora / RHEL / CentOS | `dnf` | systemd | ✅ |
| Arch Linux / Manjaro / Endeavour | `pacman` | systemd | ✅ |
| openSUSE Tumbleweed / Leap | `zypper` | systemd | ✅ |
| Void Linux | `xbps-install` | runit | ✅ |

## Dependências (opcionais)

| Ferramenta | Para quê |
|-----------|----------|
| `smartmontools` | Leitura SMART do disco (instala automático se faltar) |
| `lm-sensors` | Temperaturas do sistema |
| `nvidia-smi` | Info detalhada da GPU NVIDIA |
| `iw`, `nmcli` | Gestão WiFi |
| `docker` | Gestão de contentores |
| `flatpak` | Gestão de aplicações Flatpak |

O script auto-eleva-se para root via `sudo` quando necessário.

## Estrutura

```
sysmenu/
├── sysmenu       # Script principal (Python + Shell)
├── install.sh    # Instalador global
├── README.md
├── LICENSE       # MIT
└── .gitignore
```

O `sysmenu` é um script Python que usa `subprocess` para executar comandos shell. Toda a lógica de sistema fica em chamadas shell bem definidas, enquanto o Python gere a UI, navegação e deteção de distribuição.

## License

MIT
