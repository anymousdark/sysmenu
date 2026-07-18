# 🛠 Sys Menu

Ferramenta tudo-em-um de diagnóstico e otimização do sistema Linux (GNOME/Debian).

## Funcionalidades

| # | Opção | Descrição |
|---|-------|-----------|
| 1 | 🔍 Diagnóstico completo | Sistema, CPU, memória, disco, GPU, WiFi, portas, boot, zram |
| 2 | 📶 WiFi | Diagnóstico, trocar DNS, power saving, scan de redes |
| 3 | 💾 Zram | Status e ativação |
| 4 | 🛠 Serviços | Listar e desativar serviços com falha |
| 5 | 💽 SMART | Saúde do disco + teste rápido (short) |
| 6 | 🌡 Temperaturas | Sensores do sistema |
| 7 | 📊 Memória/CPU | Uso de recursos + top processos |
| 8 | 📝 Logs | Últimos erros do boot |
| 9 | ⚡ Hardware | Info CPU, GPU, análise de boot, dispositivos |
| 10 | 🌐 Rede | Portas abertas, firewall, ping, DNS |
| 11 | 🧹 Manutenção | `apt upgrade`, `autoremove`, limpar logs, `fstrim` |
| 12 | 📁 Espaço | Análise de partições + top pastas + esvaziar lixeira |
| 13 | 📋 Exportar | Exporta diagnóstico completo para `.txt` |
| 14 | 🏁 Auto-Pilot | Executa tudo automaticamente (update, limpeza, TRIM, zram, DNS, power save, flatpak) |
| 15 | 🔐 Segurança | SSH falhados, sudo audit, logins suspeitos, portas abertas |
| 16 | 🐳 Contentores | Docker (containers/images) + Flatpak (list/update/clean) |
| 17 | 🧼 Limpeza profunda | Old kernels, /tmp, cache apt, cache user, logs, lixeira |
| 18 | 👥 Utilizadores | Logados, últimos logins, reboots, cron jobs |
| 19 | 🔄 Serviços | Listar running/enabled, start/stop/restart, enable/disable |

## Instalação

```bash
git clone https://github.com/anymousdark/sysmenu.git
cd sysmenu
chmod +x sysmenu
./sysmenu
```

Ou instalação global:

```bash
sudo ./install.sh
# ou
sudo cp sysmenu /usr/local/bin/
sysmenu
```

## Dependências (opcionais)

- `smartmontools` — saúde do disco (SMART)
- `lm-sensors` — temperaturas
- `nvidia-smi` — info GPU NVIDIA
- `iw`, `nmcli` — WiFi

O script auto-eleva-se para root via `sudo` — executa com `./sysmenu` sem preocupações.

## License

MIT
