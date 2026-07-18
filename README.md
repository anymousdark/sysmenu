# 🛠 Sys Menu

Ferramenta tudo-em-um de diagnóstico e otimização do sistema Linux (GNOME/Debian).

## Funcionalidades

| # | Opção | Descrição |
|---|-------|-----------|
| 1 | 🔍 Diagnóstico completo | Sistema, memória, disco, temperaturas, WiFi, zram, serviços |
| 2 | 📶 WiFi | Diagnóstico da conexão, trocar DNS, desligar power saving, scan |
| 3 | 💾 Zram | Status e ativação de zram |
| 4 | 🛠 Serviços | Listar e desativar serviços com falha |
| 5 | 💽 SMART | Saúde do disco + teste short |
| 6 | 🌡 Temperaturas | Sensores do sistema |
| 7 | 📊 Memória/CPU | Uso de recursos + top processos |
| 8 | 📝 Logs | Últimos erros do boot |

## Instalação

```bash
git clone https://github.com/aycher/sysmenu.git
cd sysmenu
chmod +x sysmenu
./sysmenu
```

Ou instalação global:

```bash
sudo cp sysmenu /usr/local/bin/
sysmenu
```

## Dependências

- `mpv` (para live wallpaper)
- `smartmontools` (para SMART)
- `lm-sensors` (para temperaturas)
- `iw`, `nmcli` (para WiFi)

O script usa `pkexec` para comandos que precisam de root.

## License

MIT
